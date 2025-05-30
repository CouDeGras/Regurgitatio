📄 This README is available in 🇬🇧 English, 🇫🇷 Français, and 🇪🇸 Español.
# 🇬🇧🤮 Regurgit

**A script for lazy developers who want to `git add`, `commit`, and `push` quickly and mindlessly.**

## What does this monster do?

Regurgit is an installer that adds a function to your `~/.bashrc` to automate the basic Git workflow:

1. **`git add -A`** – Stages all changes (including deletions)
2. **`git commit -m "fixed message"`** – Commits with a predefined message
3. **`git push -u origin main --force-with-lease`** – Pushes to the `main` branch with a safe force

## 🚀 Installation

```bash
# Download and run the script
curl -sSL [SCRIPT_URL] | bash

# Or if you have it locally:
chmod +x regurgit.sh
./regurgit.sh
````

## 💻 Usage

Once installed, simply run:

```bash
regurgit
```

And that’s it. Your local code is "regurgitated" to the remote repository.

## ⚠️ Important Warnings

* **DO NOT use on shared repositories** with other developers
* **For personal projects only** or solo development branches
* **`--force-with-lease` is safer** than `--force` but still risky
* **All commit messages will be the same** – don't expect a clean history

## 🤔 Why "Regurgit"?

Because that's exactly what it does: takes your code, does the bare minimum, and spits it back into the repo. A perfect metaphor for lazy commits.

## 🔧 Features

* ✅ Prevents execution with `sudo` (for safety)
* ✅ Detects if it's already installed
* ✅ Activates immediately after installation
* ✅ Uses `--force-with-lease` instead of `--force` (safer)
* ✅ Stages all changes including deletions with `git add -A`

## 🎯 When to Use Regurgit?

**✅ Use when:**

* You're experimenting on a personal branch
* You want a quick backup of your work
* You're in "rapid prototyping" mode
* You're the only one working on the repo

**❌ DO NOT use when:**

* You're working on a team
* The project has commit message standards
* You need a clean Git history
* You're on the main branch of an important project

## 💡 More Professional Alternatives

If you want something less "regurgitative":

```bash
# For quick commits with dynamic messages
git add -A && git commit -m "WIP: $(date)" && git push

# For interactive commits
git add -p && git commit && git push
```

## 📝 Uninstallation

To remove `regurgit` from your system:

1. Edit your `~/.bashrc`
2. Delete the `regurgit()` function
3. Run `source ~/.bashrc`

## ⚖️ License

MIT – Do whatever you want, but don’t blame me if you mess up your repo.

## 🤝 Contributions

Pull requests are welcome, but remember: this script is designed to be simple and lazy. Don’t over-engineer it.

---

**Disclaimer:** This script is for developers who understand the risks of using `--force-with-lease` and automatic commits. Use at your own risk. 🤷‍♂️


# 🇫🇷🤮 Regurgit

**Un script pour les développeurs paresseux qui veulent faire `git add`, `commit` et `push` rapidement et sans réfléchir.**

## Que fait ce monstre ?

Regurgit est un installateur qui ajoute une fonction à ton `~/.bashrc` pour automatiser le flux de base de Git :

1. **`git add -A`** – Ajoute toutes les modifications (y compris les suppressions)
2. **`git commit -m "message fixe"`** – Fait un commit avec un message prédéfini
3. **`git push -u origin main --force-with-lease`** – Pousse sur la branche `main` avec un *force* plus sûr

## 🚀 Installation

```bash
# Télécharge et exécute le script
curl -sSL [URL_DU_SCRIPT] | bash

# Ou si tu l’as en local :
chmod +x regurgit.sh
./regurgit.sh
````

## 💻 Utilisation

Une fois installé, il suffit d’exécuter :

```bash
regurgit
```

Et voilà. Tout ton code local est « régurgité » vers le dépôt distant.

## ⚠️ Avertissements importants

* **NE PAS utiliser dans des dépôts partagés** avec d’autres développeurs
* **À utiliser uniquement pour des projets personnels** ou des branches de développement individuel
* **Le `--force-with-lease` est plus sûr** que `--force`, mais reste dangereux
* **Les messages de commit seront tous identiques** – n’attends pas un historique propre

## 🤔 Pourquoi « Regurgit » ?

Parce que c’est exactement ce qu’il fait : il prend ton code, le traite au minimum et le recrache dans le dépôt. Une métaphore parfaite pour les commits paresseux.

## 🔧 Fonctionnalités

* ✅ Refuse l’exécution avec `sudo` (par sécurité)
* ✅ Détecte si déjà installé
* ✅ S’active immédiatement après installation
* ✅ Utilise `--force-with-lease` au lieu de `--force` (plus sûr)
* ✅ Ajoute toutes les modifications y compris les suppressions avec `git add -A`

## 🎯 Quand utiliser Regurgit ?

**✅ À utiliser quand :**

* Tu travailles sur une branche personnelle
* Tu veux faire une sauvegarde rapide de ton travail
* Tu es en mode « prototypage rapide »
* Tu es le seul à travailler sur le dépôt

**❌ NE PAS utiliser quand :**

* Tu travailles en équipe
* Le projet impose des standards de messages de commit
* Tu veux garder un historique Git propre
* Tu es sur la branche principale d’un projet important

## 💡 Alternatives plus professionnelles

Si tu veux quelque chose de moins « régurgitatif » :

```bash
# Pour des commits rapides avec messages dynamiques
git add -A && git commit -m "WIP: $(date)" && git push

# Pour des commits interactifs
git add -p && git commit && git push
```

## 📝 Désinstallation

Pour supprimer `regurgit` de ton système :

1. Édite ton fichier `~/.bashrc`
2. Supprime la fonction `regurgit()`
3. Exécute `source ~/.bashrc`

## ⚖️ Licence

MIT – Fais ce que tu veux, mais ne me blâme pas si tu détruis ton dépôt.

## 🤝 Contributions

Les *pull requests* sont les bienvenues, mais souviens-toi : ce script est conçu pour être simple et paresseux. N’ajoute pas trop de complexité.

---

**Avertissement :** Ce script est destiné aux développeurs qui comprennent les risques de l’utilisation de `--force-with-lease` et des commits automatisés. Utilisation à tes propres risques. 🤷‍♂️





# 🇪🇸🤮 Regurgit

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