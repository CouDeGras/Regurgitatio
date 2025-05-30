# 🤮 Regurgit

**Un script para desarrolladores perezosos que quieren hacer git add, commit y push de forma rápida y sin pensar.**

## ¿Qué hace este monstruo?

Regurgit es un instalador que añade una función a tu `~/.bashrc` para automatizar el flujo básico de Git:

1. **`git add -A`** - Añade todos los cambios (incluyendo eliminaciones)
2. **`git commit -m "mensaje fijo"`** - Hace commit con un mensaje predeterminado
3. **`git push -u origin main --force-with-lease`** - Pushea a la rama main con force (pero seguro)

## 🚀 Instalación

```bash
# Descarga y ejecuta el script
curl -sSL [URL_DEL_SCRIPT] | bash

# O si lo tienes local:
chmod +x regurgit.sh
./regurgit.sh
```

## 💻 Uso

Una vez instalado, simplemente ejecuta:

```bash
regurgit
```

Y listo. Todo tu código local se "regurgita" al repositorio remoto.

## ⚠️ Advertencias Importantes

- **NO usar en repositorios compartidos** con otros desarrolladores
- **Solo para proyectos personales** o ramas de desarrollo individual  
- **El `--force-with-lease` es más seguro** que `--force` pero sigue siendo peligroso
- **Los mensajes de commit serán todos iguales** - no esperes un historial limpio

## 🤔 ¿Por qué "Regurgit"?

Porque es exactamente lo que hace: toma tu código, lo procesa mínimamente y lo escupe de vuelta al repositorio. Es una metáfora perfecta para commits perezosos.

## 🔧 Características

- ✅ No permite ejecución con `sudo` (por seguridad)
- ✅ Detecta si ya está instalado
- ✅ Se activa inmediatamente después de la instalación
- ✅ Usa `--force-with-lease` en lugar de `--force` (más seguro)
- ✅ Añade todos los cambios incluyendo eliminaciones con `git add -A`

## 🎯 ¿Cuándo usar Regurgit?

**✅ Usar cuando:**
- Estás experimentando en una rama personal
- Quieres hacer backup rápido de tu trabajo
- Estás en modo "prototipo rápido"
- Solo tú trabajas en el repositorio

**❌ NO usar cuando:**
- Trabajas en equipo
- El proyecto tiene estándares de commit messages
- Necesitas un historial de Git limpio
- Estás en la rama principal de un proyecto importante

## 💡 Alternativas más profesionales

Si quieres algo menos "regurgitativo":

```bash
# Para commits rápidos pero con mensajes dinámicos
git add -A && git commit -m "WIP: $(date)" && git push

# Para commits interactivos
git add -p && git commit && git push
```

## 📝 Desinstalación

Para eliminar `regurgit` de tu sistema:

1. Edita tu `~/.bashrc`
2. Elimina la función `regurgit()`
3. Ejecuta `source ~/.bashrc`

## ⚖️ Licencia

MIT - Haz lo que quieras, pero no me culpes si arruinas tu repositorio.

## 🤝 Contribuciones

Las pull requests son bienvenidas, pero recuerda: este script está diseñado para ser simple y perezoso. No añadas demasiada complejidad.

---

**Disclaimer:** Este script es para desarrolladores que entienden los riesgos de usar `--force-with-lease` y commits automáticos. Úsalo bajo tu propia responsabilidad. 🤷‍♂️