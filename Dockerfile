FROM hashicorp/terraform:1.0.6

LABEL repository="https://github.com/Shamil-Isayev/terraform-pr-commenter" \
      homepage="https://github.com/Shamil-Isayev/terraform-pr-commenter" \
      maintainer="Rob Burger" \
      com.github.actions.name="Terraform PR Commenter" \
      com.github.actions.description="Adds opinionated comments to a PR from Terraform fmt/init/plan output" \
      com.github.actions.icon="git-pull-request" \
      com.github.actions.color="purple"

RUN apk add --no-cache -q \
    bash \
    curl \
    jq

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
