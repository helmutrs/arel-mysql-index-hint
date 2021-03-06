describe "arel-mysql-index-hint" do
  describe "#joins" do
    context "when single index" do
      subject do
        User.
          joins(:microposts).
          hint(microposts: {hint_type => :index_microposts_on_user_id_and_created_at}).
          to_sql.gsub(/\s+/, " ")
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "INNER JOIN `microposts` " +
        "#{hint_type.to_s.upcase} INDEX (`index_microposts_on_user_id_and_created_at`) " +
        "ON `microposts`.`user_id` = `users`.`id`"
      end

      context "force index" do
        let(:hint_type) { :force }
        it { is_expected.to eq sql }
      end

      context "use index" do
        let(:hint_type) { :user }
        it { is_expected.to eq sql }
      end

      context "ignore index" do
        let(:hint_type) { :ignore }
        it { is_expected.to eq sql }
      end
    end

    context "when multiple indexes" do
      subject do
        User.
          joins(:microposts).
          hint(
            users: {hint_type => :index_users_on_email},
            microposts: {hint_type => :index_microposts_on_user_id_and_created_at},
          ).
          to_sql.gsub(/\s+/, " ")
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "#{hint_type.to_s.upcase} INDEX (`index_users_on_email`) " +
        "INNER JOIN `microposts` " +
        "#{hint_type.to_s.upcase} INDEX (`index_microposts_on_user_id_and_created_at`) " +
        "ON `microposts`.`user_id` = `users`.`id`"
      end

      context "force index" do
        let(:hint_type) { :force }
        it { is_expected.to eq sql }
      end

      context "use index" do
        let(:hint_type) { :user }
        it { is_expected.to eq sql }
      end

      context "ignore index" do
        let(:hint_type) { :ignore }
        it { is_expected.to eq sql }
      end
    end

    context "when add hint before joins" do
      subject do
        User.
          hint(microposts: {hint_type => :index_microposts_on_user_id_and_created_at}).
          joins(:microposts).
          to_sql.gsub(/\s+/, " ")
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "INNER JOIN `microposts` " +
        "#{hint_type.to_s.upcase} INDEX (`index_microposts_on_user_id_and_created_at`) " +
        "ON `microposts`.`user_id` = `users`.`id`"
      end

      let(:hint_type) { :force }

      it { is_expected.to eq sql }
    end

    context "when without index" do
      subject do
        User.
          joins(:microposts).
          to_sql.gsub(/\s+/, " ")
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "INNER JOIN `microposts` " +
        "ON `microposts`.`user_id` = `users`.`id`"
      end

      it { is_expected.to eq sql }
    end
  end
end
