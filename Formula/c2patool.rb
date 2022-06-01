class C2patool < Formula
  desc "Tool for displaying and creating C2PA manifests"
  homepage "https://opensource.contentauthenticity.org/"
  url "https://github.com/contentauth/c2pa-rs/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "08501b0a3899343bae280c2e2a0e663cf79649dd245e96d18158009552a84438"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "openssl@3" => :build
  depends_on "rust" => :build

  resource "CA" do
    url "https://github.com/contentauth/c2pa-rs/raw/ce6108f7665b79c56a5b260e6c49155e27a99cdb/sdk/tests/fixtures/CA.jpg"
    sha256 "ae0a1bd25fa89c9e824641d26dbd5e60e91b363e7f800fe81edec1baa20cb70f"
  end

  def install
    cd "c2patool" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    resource("CA").stage do
      assert_match "contentauth:urn:uuid:c05a8614-cf57-4fc5-8588-09562d77765b", shell_output("#{bin}/c2patool CA.jpg").strip
    end
  end
end
