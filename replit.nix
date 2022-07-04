{ pkgs }: {
    deps = [
        pkgs.cowsay
        pkgs.python39
        pkgs.python39Packages.jupyter
        pkgs.python39Packages.pandas
        pkgs.python39Packages.scikit-learn
        pkgs.python39Packages.seaborn
        pkgs.python39Packages.xgboost
    ];

    config = {
        allowUnfree = true;
    };

    services.printing = {
        enable = true;
        drivers = with pkgs; [ hplip ];
    };
  
    programs.system-config-printer.enable = true;
}