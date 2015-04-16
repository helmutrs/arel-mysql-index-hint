describe "arel-mysql-index-hint" do
  describe "joins" do
    context "single index" do
      subject do
        User.
          joins(:microposts).
          hint(microposts: {index_microposts_on_user_id_and_created_at: hint_type}).
          to_sql
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "INNER JOIN `microposts` " +
        "#{hint_type} INDEX (index_microposts_on_user_id_and_created_at) " +
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

    context "multiple indexes" do
      subject do
        User.
          joins(:microposts).
          hint(
            users: {index_users_on_email: hint_type},
            microposts: {index_microposts_on_user_id_and_created_at: hint_type},
          ).
          to_sql
      end

      let(:sql) do
        "SELECT `users`.* FROM `users` " +
        "#{hint_type} INDEX (index_users_on_email) " +
        "INNER JOIN `microposts` " +
        "#{hint_type} INDEX (index_microposts_on_user_id_and_created_at) " +
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
  end
end
