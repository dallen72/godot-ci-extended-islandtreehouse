FROM barichello/godot-ci:4.5

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    fontconfig \
    fonts-dejavu-core \
    fonts-dejavu-mono \
    libfreetype6 \
    libfontconfig1 \
    libpng16-16t64 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -v -p ~/.local/share/godot/export_templates/ \
    && mkdir -v -p ~/.config/ \
    && mv /root/.config/godot ~/.config/godot \
    && mv /root/.local/share/godot/export_templates/4.5.stable ~/.local/share/godot/export_templates/4.5.stable