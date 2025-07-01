{ pkgs ? import <nixpkgs> {} }:

{
  oso-cloud = pkgs.callPackage ./oso-cloud { };
} 
