# 🎨 Aura Wellness - Wireframes de Baja Fidelidad

## ✅ ESTADO: COMPLETADOS Y FUNCIONALES

**Versión:** 1.0.0  
**Fecha de Completación:** Marzo 4, 2026  
**Próxima Fase:** High-Fidelity Design (Material Design 3)

---

## 📱 Pantallas Creadas

### 1️⃣ Dashboard Principal
**Archivo:** `wireframes/01-dashboard-main.html`

```
┌─────────────────────────────────┐
│  ☰  Aura    📱                  │ Header
├─────────────────────────────────┤
│  ¡Hola, Carlos!                 │ Welcome
│  Martes, 4 de marzo             │
├─────────────────────────────────┤
│ ❤️ 72 BPM  │ 🏃 8,547 Pasos    │ 
├─────────────┼──────────────────┤
│ 😴 7.5h     │ 💧 2.1L Agua    │ Métricas
├─────────────────────────────────┤
│ [Registrar Actividad]           │ Actions
│ [Ver Métricas Detalladas]       │
├─────────────────────────────────┤
│ 🏠 Home │ 📊 Metrics │ ➕ │ 👤 │ Nav
└─────────────────────────────────┘
```

**Características:**
- ✅ Saludo personalizado
- ✅ Grid 2x2 de métricas
- ✅ Botones de acción funcionales
- ✅ Navegación inferior (4 items)
- ✅ Responsive en móvil

**Acceder:** [Ver Dashboard](wireframes/01-dashboard-main.html)

---

### 2️⃣ Navigation Drawer
**Archivo:** `wireframes/02-navigation-drawer.html`

```
Overlay occultado
    │
    ├─ ┌──────────────────────┐
    │  │ 👤 Carlos Pomadev   │
    │  │ carlos@example.com  │
    │  ├──────────────────────┤
    │  │ 📊 Métricas          │
    │  │ 🏥 Consultas         │
    │  │ 📋 Objetivos         │
    │  │ ⚙️ Configuración     │
    │  │ 📖 Ayuda             │
    │  ├──────────────────────┤
    │  │ [Cerrar Sesión]      │
    └─ └──────────────────────┘
```

**Características:**
- ✅ Información del usuario
- ✅ Menú con 5 opciones
- ✅ Overlay de fondo
- ✅ Botón de logout
- ✅ Animación suave

**Acceder:** [Ver Drawer](wireframes/02-navigation-drawer.html)

---

### 3️⃣ Health Metrics
**Archivo:** `wireframes/03-health-metrics.html`

```
┌─────────────────────────────────┐
│ ←  Métricas               ⋯     │ Header
├─────────────────────────────────┤
│ [Día] [Semana] [Mes] [Año]     │ Selector
├─────────────────────────────────┤
│ ❤️ Frecuencia Cardíaca         │
│ ──────────────────────          │ Gráfico
│ Promedio: 72 BPM   📈 +2%      │
│ Máx: 95 | Mín: 58  | Rep: 65  │ Detalles
├─────────────────────────────────┤
│ • ○ ○                           │ Indicadores
└─────────────────────────────────┘
```

**Características:**
- ✅ Selector de período (Día/Semana/Mes/Año)
- ✅ Carousel de 3 métricas
- ✅ Gráficos simples
- ✅ Estadísticas detalladas
- ✅ Indicadores de navegación

**Acceder:** [Ver Métricas](wireframes/03-health-metrics.html)

---

### 4️⃣ Dialog / Modal
**Archivo:** `wireframes/04-dialog-confirmation.html`

```
████████████████████████████
█                          █ Overlay
█   ┌────────────────────┐ █
█   │ ⚠️                 │ █
█   │ Confirmar acción   │ █
█   │ ¿Deseas cerrar     │ █
█   │ sesión?            │ █ Dialog
█   │                    │ █
█   │ [Cancelar] [OK]    │ █
█   └────────────────────┘ █
█                          █
████████████████████████████
```

**Características:**
- ✅ Overlay semitransparente
- ✅ Dialog centrado
- ✅ Estados (confirmación, error, éxito)
- ✅ Botones funcionales
- ✅ Flexible para múltiples casos

**Acceder:** [Ver Dialog](wireframes/04-dialog-confirmation.html)

---

## 🎯 Cómo Navegar Entre Wireframes

### Opción 1: Centro de Control
Abre [INDEX.html](wireframes/INDEX.html) - Página con todos los wireframes enlazados

### Opción 2: Vista Resumida Visual
Abre [WIREFRAMES-OVERVIEW.html](wireframes/WIREFRAMES-OVERVIEW.html) - Resumen interactivo

### Opción 3: Servidor Local (Recomendado)
```bash
cd /workspaces/Proyecto_GlobalFin/aura-wellness/wireframes
python3 -m http.server 8000
# Abre http://localhost:8000 en tu navegador
```

---

## 📊 Especificaciones Técnicas

### Colores del Sistema

| Nombre | Código | Uso |
|--------|--------|-----|
| **Primary** | #4CAF50 | Botones, acciones principales |
| **Secondary** | #2196F3 | Información, métricas secundarias |
| **Tertiary** | #FF9800 | Alertas, acentos |
| **Error** | #F44336 | Estados de error |
| **Surface** | #FEFFFF | Fondo de componentes |
| **On Surface** | #1A1C1E | Texto principal |

### Tipografía

```
Familia: System Fonts
  → -apple-system (iOS/macOS)
  → Roboto (Android)
  → Segoe UI (Windows)

Escala:
  • Display: 32px - 48px (headers principales)
  • Headline: 24px - 28px (títulos)
  • Title: 18px - 22px (subtítulos)
  • Body: 14px - 16px (contenido)
  • Label: 12px - 14px (etiquetas)

Pesos:
  • 400 Regular
  • 500 Medium
  • 600 SemiBold
  • 700 Bold
```

### Grid System

- **Base:** 8px
- **Padding:** 16px / 24px (estándar)
- **Gaps:** 12px / 20px
- **Border Radius:** 12px / 24px
- **Touch Targets:** 44px mínimo

---

## ✨ Características Implementadas

### Interactividad
- ✅ Navegación funcional entre pantallas
- ✅ Hover states en buttons
- ✅ Click handlers para elementos interactivos
- ✅ Drawer modal con overlay
- ✅ Carousel simulado
- ✅ Estados activos de navegación

### Responsive Design
- ✅ Mobile-first approach
- ✅ Adaptable a tablets
- ✅ Compatible con desktop
- ✅ CSS Grid/Flexbox moderno
- ✅ Media queries implementadas

### Accesibilidad (WCAG AA)
- ✅ Contraste mínimo 4.5:1
- ✅ Touch targets 44px
- ✅ Navegación por teclado
- ✅ Estructura semántica HTML5
- ✅ Colores accesibles

---

## 📈 Estadísticas

```
Pantallas principales:      4
Componentes reutilizables:  15+
Líneas de código:           2,000+
Archivos HTML:              5
Tamaño total:               444KB
Documentación:              3 archivos MD
```

---

## 🎓 Documentación

### Archivos Disponibles

| Archivo | Descripción | Tipo |
|---------|-------------|------|
| [README-wireframes.md](wireframes/README-wireframes.md) | Documentación técnica completa | Markdown |
| [WIREFRAMES-OVERVIEW.html](wireframes/WIREFRAMES-OVERVIEW.html) | Resumen visual interactivo | HTML |
| [PROJECT-STATUS.md](PROJECT-STATUS.md) | Estado completo del proyecto | Markdown |
| [INDEX.html](wireframes/INDEX.html) | Centro de navegación | HTML |

---

## 🔄 Flujos Validados

### Flujo Principal
```
INDEX
 ├─ DASHBOARD → Información principal
 │    ├─ DRAWER (Navigation menu)
 │    ├─ METRICS (Detail view)
 │    └─ DIALOGS (Confirmations)
 │
 ├─ NAVIGATION → Acceso a otras secciones
 │
 └─ DIALOGS → Confirmaciones y modales
```

### Flujos de Usuario
- ✅ Ver dashboard al abrir app
- ✅ Acceder a menú lateral (drawer)
- ✅ Ver métricas detalladas
- ✅ Cambiar período de visualización
- ✅ Confirmar acciones (dialogs)

---

## ✅ Checklist de Validación

### Estructura
- [x] 4 pantallas principales creadas
- [x] Componentes clara y reconocibles
- [x] Jerarquía visual clara
- [x] Espaciado consistente

### Funcionalidad
- [x] Navegación entre pantallas
- [x] Elementos interactivos responden
- [x] Drawer abre y cierra
- [x] Selector de período funciona
- [x] Carousel simulado

### Diseño
- [x] Colores definidos y aplicados
- [x] Tipografía consistente
- [x] Grid 8px implementado
- [x] Espaciado uniforme
- [x] Componentes reutilizables

### Accesibilidad
- [x] Contraste WCAG AA
- [x] Touch targets 44px
- [x] Navegación por teclado
- [x] HTML semántico
- [x] Sin dependencias de color sólo

### Documentación
- [x] README de wireframes
- [x] Overview visual
- [x] Especificaciones técnicas
- [x] Guía de uso
- [x] Checklist de calidad

---

## 🚀 Próximos Pasos

### Fase 2: High-Fidelity Design
**Estado:** ⏳ En Progreso

### Archivos Preparados
✅ Material Theme Builder Config (JSON)  
✅ Design Tokens Completos (JSON)  
✅ Figma Specifications (MD)  
✅ Quality Checklist (MD)  
✅ High-Fidelity Preview (HTML)  

### Actividades Pendientes
1. ⏳ Implementar en Figma
2. ⏳ Crear componentes reutilizables
3. ⏳ Diseñar todas las pantallas
4. ⏳ Validar con stakeholders

### Fase 3: Desarrollo Flutter
**Estado:** 📅 Próximo

---

## 🎯 Objetivos Alcanzados

| Objetivo | Estado | Detalles |
|----------|--------|----------|
| Wireframes básicos | ✅ | 4 pantallas completas |
| Navegación funcional | ✅ | Flujos validados |
| Componentes | ✅ | 15+ reutilizables |
| Especificaciones | ✅ | Colores, tipografía, espaciado |
| Accesibilidad | ✅ | WCAG AA implementado |
| Documentación | ✅ | Completa y actualizada |
| Responsive design | ✅ | Móvil, tablet, desktop |

---

## 📞 Información de Contacto

**Proyecto:** Aura Wellness  
**Responsable:** Carlos Pomadev  
**Email:** carlospomadev@gmail.com  
**GitHub:** [carlospomadev/Proyecto_GlobalFin](https://github.com/carlospomadev/Proyecto_GlobalFin)

---

## 🏆 Resumen

Aura Wellness tiene **wireframes de baja fidelidad completamente funcionales y documentados**. Las 4 pantallas principales incluyen:

1. ✅ **Dashboard** - Resumen de métricas
2. ✅ **Navigation Drawer** - Menú lateral
3. ✅ **Health Metrics** - Vista detallada
4. ✅ **Dialog Modal** - Confirmaciones

**Toda la documentación está lista para pasar a la fase de alta fidelidad y desarrollo Flutter.**

---

*Última actualización: Marzo 4, 2026*  
*Estado: ✅ WIREFRAMES COMPLETADOS*
