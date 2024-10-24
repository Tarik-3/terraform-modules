
resource "aws_s3_bucket" "stockage" {
    bucket = var.bucket
    versioning {
      enable = true
    }
    lifecycle = {
      prevent_destroy= true
    }

}


resource "aws_s3_object" "upload_file" {
  bucket = aws_s3_bucket.stockage.id
  key    = "Creating file localy"
  source = "../../local"
}