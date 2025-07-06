{pkgs}: {
  channel = "unstable";
  packages = [
    pkgs.npm-check
    pkgs.haskellPackages.snap-templates
    pkgs.snapcraft
    pkgs.nodejs_24
    pkgs.gh
  ];
  idx.extensions = [
    "svelte.svelte-vscode"
    "vue.volar"
  ];
  idx.previews = {
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "dev"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
        ];
        manager = "web";
      };
    };
  };
}