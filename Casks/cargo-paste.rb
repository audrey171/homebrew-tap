cask "cargo-paste" do
  version "0.1.0"
  sha256 "905d94b8be702450ee1585eefecf35c810ce164dbffd645e47e4e428b5e66f74"

  url "https://github.com/audrey171/cargo-paste-releases/releases/download/v#{version}/Cargo-Paste-#{version}.zip"
  name "Cargo Paste"
  desc "Five-pocket clipboard for text, images, and rich content"
  homepage "https://cargopaste.com/"

  depends_on macos: :sonoma

  app "Cargo Paste.app"

  uninstall quit: "local.audreywoodward.CargoPaste"

  caveats <<~EOS
    Open Cargo Paste after installation.
    For hold-Command-V, enable Cargo Paste in System Settings > Privacy & Security > Accessibility.
  EOS
end
