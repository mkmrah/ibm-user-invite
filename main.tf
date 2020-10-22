resource ibm_iam_user_invite "invite_user"{
    depends_on = [null_resource.env_script]
    users = ["test@in.ibm.com"]
}

resource null_resource "env_script" {
    provisioner local_exec {
        command = "printenv"

    }
}
