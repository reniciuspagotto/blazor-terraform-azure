variable "resource_group_name" {
  type        = string
  default     = "BlazorRanchoDevIoc"
}

variable "service_plan_name" {
  type        = string
  default     = "blazor-ranchodev-serviceplan"
}

variable "app_service_plan_name" {
  type        = string
  default     = "ranchodev-blazor-appservice"
}

variable "service_location" {
  type        = string
  default     = "Brazil South"
}