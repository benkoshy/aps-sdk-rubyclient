# frozen_string_literal: true

require_relative "test_helper"

describe "authentication" do
  describe "scopes" do
    describe "bucket" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Bucket.read).must_equal "bucket:search bucket:read"
      end

      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Bucket.write).must_equal "bucket:search bucket:read bucket:create bucket:update"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Bucket.admin).must_equal "bucket:search bucket:read bucket:create bucket:update bucket:delete"
      end
    end

    describe "user_profile" do
      it "read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::UserProfile.read).must_equal "user-profile:read"
      end
    end

    describe "user" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::User.read).must_equal "user:read"
      end

      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::User.write).must_equal "user:read user:write"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::User.admin).must_equal "user:read user:write"
      end
    end

    describe "viewables" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Viewables.read).must_equal "viewables:read"
      end
    end

    describe "data" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Data.read).must_equal "data:read data:search"
      end

      it "#read_urn" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Data.read_urn("123")).must_equal "data:read:123"
      end

      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Data.write).must_equal "data:read data:search data:create"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Data.admin).must_equal "data:read data:search data:create data:write"
      end
    end

    describe "code" do
      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Code.write).must_equal "code:all"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Code.admin).must_equal "code:all"
      end
    end

    describe "account" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Account.read).must_equal "account:read"
      end

      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Account.write).must_equal "account:read account:write"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Account.admin).must_equal "account:read account:write"
      end
    end

    describe "open_id" do
      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::OpenId.write).must_equal "openid"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::OpenId.admin).must_equal "openid"
      end
    end


    describe "universal" do
      it "#read" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Universal.write).must_equal "user-profile:read user:read viewables:read data:read data:search bucket:read account:read user:write data:write data:create bucket:create bucket:update code:all account:write openid"
      end

      it "#write" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Universal.write).must_equal "user-profile:read user:read viewables:read data:read data:search bucket:read account:read user:write data:write data:create bucket:create bucket:update code:all account:write openid"
      end

      it "#admin" do
        _(Aps::Sdk::Rubyclient::Authentication::Scopes::Universal.admin).must_equal "user-profile:read user:read viewables:read data:read data:search bucket:read account:read user:write data:write data:create bucket:create bucket:update code:all account:write openid bucket:delete"
      end
    end


  end
end
