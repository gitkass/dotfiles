{
  description = "A development environment with Taskfile";
  inputs = {
    # Pinning a specific version of nixpkgs for reproducibility
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs = { self, nixpkgs, ... }: 
    let
      # Define the systems we want to support
      supportedSystems = [ "x86_64-linux" "aarch64-darwin" "x86_64-darwin" ];
      # Helper function to generate outputs for all supported systems
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      # Define formatters for each system
      formatter = forAllSystems (system:
        nixpkgs.legacyPackages.${system}.nixpkgs-fmt
      );
      
      # Define development shells
      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          go = pkgs.go_1_23;
        in
        {
          default = pkgs.mkShell {
            # List packages you want available in the shell's PATH
            packages = with pkgs; [
              bash
              chezmoi #
              delve
              git
              go-task  # https://taskfile.dev/
              go-tools
              gofumpt
              golangci-lint
              golines
              #gopls
              goreleaser
              #gosh
              gotools
              neo-cowsay
              nixpkgs-fmt
            ];
            
            shellHook = ''
              echo "🚀 Development environment loaded!"
              echo "Run 'task --list' to see available tasks"
            '';
          };
        }
      );
    };
}