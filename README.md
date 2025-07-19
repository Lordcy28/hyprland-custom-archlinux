# Dotfiles de Hyprland (Actualizado para 0.50.0)

Este repositorio contiene mis dotfiles para Hyprland, actualizados para ser compatibles con Hyprland 0.50.0 y las últimas versiones de sus dependencias y herramientas. Incluye configuraciones para Hyprland, Waybar, Rofi, y otros scripts útiles.

## Guía de Instalación (Arch Linux)

Esta guía asume que ya tienes una instalación básica de Arch Linux. Si no es así, por favor, consulta la [Guía de Instalación de Arch Linux](https://wiki.archlinux.org/index.php/Installation_guide) oficial.

### 1. Clonar el Repositorio

Abre una terminal y clona este repositorio:

```bash
git clone https://github.com/tu_usuario/dotfiles-hyprland.git # Reemplaza con la URL de tu repositorio
cd dotfiles-hyprland
```

### 2. Ejecutar el Script de Instalación

El script de instalación se encargará de instalar las dependencias necesarias y copiar los archivos de configuración a sus ubicaciones correctas. Asegúrate de tener conexión a internet.

```bash
chmod +x install.sh
sudo ./install.sh
```

**Nota:** El script utilizará `sudo` para instalar paquetes. Se te pedirá tu contraseña.

### 3. Configuración Post-Instalación

Después de ejecutar el script, es recomendable reiniciar tu sistema o al menos tu sesión de Hyprland para que todos los cambios surtan efecto.

#### a. Iniciar Hyprland

Si aún no lo has hecho, configura tu gestor de inicio de sesión (por ejemplo, SDDM, GDM, LightDM) para iniciar Hyprland. Si estás usando SDDM, asegúrate de que `sddm-greeter` esté configurado para usar Wayland.

#### b. Personalización de Wallpapers

Los wallpapers se gestionan con `hyprpaper`. Puedes editar `~/.config/hypr/hyprpaper.conf` para precargar tus imágenes y luego usar los scripts de `wallpaper.sh` para establecerlos.

#### c. Configuración de Audio

El script instala `pipewire` y `wireplumber`. Asegúrate de que los servicios estén habilitados y funcionando:

```bash
systemctl --user enable pipewire pipewire-pulse
systemctl --user start pipewire pipewire-pulse
```

#### d. Configuración de Rofi

Los menús de Rofi se encuentran en `~/.config/wofi/modules/`. Puedes personalizarlos editando los scripts y archivos `.rasi` correspondientes.

#### e. Configuración de Waybar

La configuración de Waybar se encuentra en `~/.config/waybar/`. Puedes editar `config.jsonc` y `style.css` para ajustar la barra a tus preferencias.

### 4. Solución de Problemas Comunes

*   **Hyprland no inicia:** Verifica que tus drivers gráficos sean compatibles con GLES 3.0. Revisa los logs de Hyprland (`journalctl --user -u hyprland`).
*   **Problemas con Waybar/Rofi:** Asegúrate de que los módulos y scripts personalizados tengan los permisos de ejecución correctos (`chmod +x`). Revisa la salida de `waybar` en la terminal para ver errores.
*   **Problemas de audio:** Verifica el estado de `pipewire` y `wireplumber` con `systemctl --user status pipewire`.

¡Disfruta de tu entorno Hyprland actualizado!


