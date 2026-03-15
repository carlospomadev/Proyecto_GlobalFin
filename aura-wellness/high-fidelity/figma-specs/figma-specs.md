# Especificaciones para Figma - Aura Wellness

## 🎨 Configuración del Proyecto en Figma

### 1. Preparación del Archivo
- Crear nuevo archivo en Figma
- Nombrar: "Aura Wellness - High Fidelity Design"
- Configurar grid system: 8px base grid
- Configurar constraints para responsive design

### 2. Importación del Material Theme

#### Paso 1: Instalar Material Theme Builder
- Abrir Figma Desktop
- Ir a Plugins > Browse plugins
- Buscar "Material Theme Builder"
- Instalar el plugin oficial de Google

#### Paso 2: Importar Theme JSON
- Abrir Material Theme Builder plugin
- Seleccionar "Import theme"
- Cargar el archivo `material-theme/aura-wellness-theme.json`
- Verificar que se importen correctamente:
  - Primary: #4CAF50 (Verde Salud)
  - Secondary: #2196F3 (Azul Confianza)
  - Tertiary: #FF9800 (Ámbar Energía)

#### Paso 3: Generar Componentes
- Ejecutar "Generate theme" en el plugin
- Esto creará automáticamente:
  - Color tokens
  - Typography scale
  - Component variants
  - Elevation system

### 3. Estructura de Frames

#### A. Cover Page
```
Frame: Cover (1440x1024)
├── Background: Linear gradient (#4CAF50 to #45a049)
├── Logo: Aura Wellness (Inter Bold, 72px)
├── Tagline: "Simplicidad y Bienestar" (Inter Regular, 24px)
├── Version: v1.0.0 (Inter Regular, 16px)
└── Date: Marzo 2024
```

#### B. Style Guide
```
Frame: Style Guide (1440x1024)
├── Colors: Primary, Secondary, Tertiary scales
├── Typography: Complete scale with examples
├── Spacing: 8px grid system
├── Elevation: Shadow levels
└── Components: Buttons, Cards, Inputs
```

#### C. Screens
```
Frame: Screens (375x812 - iPhone X)
├── Dashboard Main
├── Navigation Drawer
├── Health Metrics
├── Login Screen
├── Settings Screen
└── Dialog Examples
```

### 4. Componentes Principales

#### Buttons
```
Primary Button:
- Background: Primary (#4CAF50)
- Text: On Primary (#FFFFFF)
- Height: 48px
- Border Radius: 24px
- Typography: Label Large (Inter Medium, 14px)

Secondary Button:
- Background: Secondary Container (#BBDEFB)
- Text: On Secondary Container (#001B3E)
- Height: 48px
- Border Radius: 24px

Text Button:
- Background: Transparent
- Text: Primary (#4CAF50)
- Height: 48px
```

#### Cards
```
Elevated Card:
- Background: Surface (#FEFFFF)
- Elevation: Level 1 (1px shadow)
- Border Radius: 16px
- Padding: 16px

Outlined Card:
- Background: Surface (#FEFFFF)
- Border: 1px solid Outline (#BDBDBD)
- Border Radius: 16px
- Padding: 16px
```

#### Text Fields
```
Filled Text Field:
- Background: Surface Container Highest (#E8EAED)
- Border: 1px solid Outline (#BDBDBD)
- Border Radius: 8px
- Height: 56px
- Padding: 16px

Outlined Text Field:
- Background: Transparent
- Border: 1px solid Outline (#BDBDBD)
- Border Radius: 8px
- Height: 56px
- Padding: 16px
```

### 5. Pantallas Detalladas

#### Dashboard Main
```
Layout:
├── Header (64px height)
│   ├── Menu Button (24x24px)
│   ├── Logo "Aura" (Title Medium)
│   └── Spacer
├── Welcome Section (120px height)
│   ├── Greeting (Headline Small)
│   └── Date (Body Medium)
├── Metrics Grid (240px height)
│   ├── 4 Metric Cards (1fr each)
│   │   ├── Icon (48x48px)
│   │   ├── Value (Display Small)
│   │   ├── Label (Body Small)
│   │   └── Background (Surface)
├── Quick Actions (80px height)
│   ├── Primary CTA Button
│   └── Secondary CTA Button
├── Recent Activity (200px height)
│   ├── Section Title (Title Medium)
│   └── Activity List (max 3 items)
└── Bottom Navigation (80px height)
    ├── 4 Navigation Items
    │   ├── Icon (24x24px)
    │   ├── Label (Label Medium)
    │   └── Active State Indicator
```

#### Navigation Drawer
```
Layout:
├── Drawer Header (120px height)
│   ├── User Avatar (48x48px)
│   ├── User Name (Title Medium)
│   └── User Email (Body Medium)
├── Menu Sections
│   ├── Primary Menu
│   │   ├── Home
│   │   ├── Metrics
│   │   ├── Goals
│   │   └── Progress
│   ├── Health Menu
│   │   ├── Heart Rate
│   │   ├── Sleep
│   │   ├── Hydration
│   │   └── Physical Activity
│   └── Settings Menu
│       ├── Settings
│       ├── Notifications
│       └── Dark Mode
└── Footer (80px height)
    └── Logout Button
```

#### Health Metrics
```
Layout:
├── Header (64px height)
│   ├── Back Button
│   ├── Title (Headline Small)
│   └── Filter Button
├── Time Selector (48px height)
│   └── 4 Time Options (Day, Week, Month, Year)
├── Metrics Carousel (300px height)
│   ├── 3 Metric Slides
│   │   ├── Metric Card
│   │   │   ├── Icon (64x64px)
│   │   │   ├── Value (Display Medium)
│   │   │   ├── Label (Title Large)
│   │   │   ├── Trend (Body Small + Icon)
│   │   │   ├── Chart (120px height)
│   │   │   └── Details Grid
│   └── Indicators (3 dots)
└── Bottom Navigation
```

### 6. Interacciones y Estados

#### Button States
- **Default**: Normal appearance
- **Hover**: Opacity 0.08 overlay
- **Pressed**: Opacity 0.12 overlay
- **Disabled**: Opacity 0.38, no interaction

#### Navigation States
- **Active**: Primary color, filled icon
- **Inactive**: Neutral color, outlined icon
- **Hover**: Slight background tint

#### Form States
- **Default**: Outline border
- **Focus**: Primary border, state layer
- **Error**: Error border and text
- **Disabled**: Reduced opacity

### 7. Responsive Design

#### Breakpoints
- **Mobile**: 320px - 767px
- **Tablet**: 768px - 1023px
- **Desktop**: 1024px+

#### Adaptive Components
- **Navigation**: Bottom nav (mobile) → Side nav (desktop)
- **Cards**: Single column (mobile) → Multi-column (desktop)
- **Typography**: Scales appropriately per breakpoint

### 8. Assets y Recursos

#### Iconos
- Usar Material Icons 3
- Consistent weight: Filled for active, Outlined for inactive
- Custom icons para métricas de salud

#### Imágenes
- Placeholder images para avatares
- Health-related illustrations
- Background patterns (subtle)

#### Animaciones
- Page transitions: 300ms ease-out
- Component interactions: 150ms ease-out
- Loading states: Smooth progress indicators

### 9. Prototipado

#### Flujos Principales
1. **Onboarding**: Splash → Welcome → Permissions → Dashboard
2. **Daily Use**: Dashboard → Metrics → Log Activity → Dashboard
3. **Settings**: Dashboard → Settings → Modify → Save → Dashboard

#### Microinteracciones
- Button press feedback
- Page transition animations
- Loading state animations
- Success/error feedback

### 10. Exportación para Desarrollo

#### Assets
- Exportar iconos como SVG
- Exportar imágenes como PNG/WebP
- Generar CSS custom properties

#### Especificaciones
- Incluir medidas exactas
- Colores en formato hex
- Typography con valores específicos
- Spacing con valores en px/rem

### 11. Checklist de Calidad

#### Diseño
- [ ] Color contrast ratios ≥ 4.5:1
- [ ] Touch targets ≥ 44px
- [ ] Consistent spacing (8px grid)
- [ ] Proper text hierarchy

#### UX
- [ ] Clear navigation patterns
- [ ] Intuitive gestures
- [ ] Accessible interactions
- [ ] Error prevention

#### Técnico
- [ ] Responsive layouts
- [ ] Performance optimized
- [ ] Cross-platform consistency
- [ ] Development-ready specs

---

*Última actualización: Marzo 4, 2024*</content>
<parameter name="filePath">/workspaces/Proyecto_GlobalFin/aura-wellness/high-fidelity/figma-specs/figma-specs.md