variable "filename" {
        default = "/home/ubuntu/terraform-course/terraform-variables/devops-automated.txt"
}

variable "content" {
        default = "this si autogenerated from variable."
}

variable "devops_op_trainer" {}

variable "content_map" {
        type = map
        default = {
                "content1" = "this is content1"
                "content2" = "this is content2"
        }
}

variable "variable_list" {
        type = list
        default = ["/home/ubuntu/terraform-course/terraform-variables/file_1.txt","/home/ubuntu/terraform-course/terraform-variables/file_2.txt"]
}


variable "aws_ec2_obj" {
        type = object({
                name = string
                instances = number
                keys = list(string)
                ami = string
        })
        default = {
                name = "test_ec2_instance"
                instances = 1
                keys = ["key1.pem","key2.pem"]
                ami = "ubuntu"
        }
}

variable "students" {}
