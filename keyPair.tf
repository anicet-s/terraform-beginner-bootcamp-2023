resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMcixFZyovEXgG5uJVBPnvXwbJ+1x0sdtk3zeAXeHTMw ANISET AKANZA@DESKTOP-BD5525I"
}