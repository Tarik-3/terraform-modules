
variable "instances_nginx" {
    type = list
    # default = [["nginx1",8081],["nginx2",8082],["nginx3",8083],["nginx4",8084] ]
    default = [
        {name: "nginx1",
        port: 8081},
        {name: "nginx2",
        port: 8082},
        {name: "nginx3",
        port: 8083},
        {name: "nginx4",
        port: 8085}
    ]
}