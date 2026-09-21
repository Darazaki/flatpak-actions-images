FROM ghcr.io/flathub/flatpak-builder-lint:latest

ENTRYPOINT []
ENV TMPDIR=/tmp

ARG PACKAGES

RUN flatpak remote-add --if-not-exists flathub \
    https://flathub.org/repo/flathub.flatpakrepo
RUN --security=insecure \
    printf '%s\n' "$PACKAGES" | xargs -r flatpak install -y flathub
