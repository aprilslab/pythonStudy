{ pkgs }: {
    deps = [
        pkgs.cowsay
        pkgs.python39Packages.jupyter
        pkgs.python39Packages.pandas
        pkgs.python39Packages.scikit-learn
        pkgs.python39Packages.seaborn
        pkgs.python39Packages.xgboost
    ];
}