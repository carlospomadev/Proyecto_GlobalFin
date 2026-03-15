# Wireframes de Baja Fidelidad - Aura Wellness

## 📋 Visión General

Los wireframes de baja fidelidad de Aura Wellness representan un conjunto de pantallas funcionales para validar la estructura, flujo y experiencia del usuario antes de proceder al diseño de alta fidelidad.

**Versión:** 1.0.0  
**Fecha:** Marzo 4, 2026  
**Estado:** ✅ Completo

---

## 📱 Pantallas Incluidas

### 1. **Dashboard Principal** (`01-dashboard-main.html`)
**Propósito:** Vista principal de la aplicación con resumen de métricas

**Componentes:**
- Header con logo y menú
- Sección de bienvenida personalizada
- Grid de 4 métricas principales:
  - Frecuencia cardíaca (BPM)
  - Pasos diarios
  - Horas de sueño
  - Consumo de agua
- Botones de acción rápida
- Navegación inferior con 4 opciones (Inicio, Métricas, Agregar, Perfil)

**Flujo:**
- Pantalla inicial de la aplicación
- Punto de acceso a otras secciones
- Acceso al drawer de navegación

**Estado:** ✅ Completo

---

### 2. **Navigation Drawer** (`02-navigation-drawer.html`)
**Propósito:** Menú lateral con opciones de navegación y configuración

**Componentes:**
- Header del usuario (avatar, nombre, email)
- Secciones del menú:
  - 📊 Métricas
  - 🏥 Consultas
  - 📋 Objetivos
  - ⚙️ Configuración
  - 📖 Ayuda
- Botón de cerrar sesión
- Overlay semitransparente en el fondo

**Flujo:**
- Se abre desde el dashboard
- Permite navegar a diferentes secciones
- Overlay para cerrar al hacer click afuera

**Estado:** ✅ Completo

---

### 3. **Health Metrics** (`03-health-metrics.html`)
**Propósito:** Vista detallada de métricas de salud con histórico

**Componentes:**
- Navegación con back button
- Selector de período (Día, Semana, Mes, Año)
- Carousel de métricas:
  - Frecuencia cardíaca
  - Pasos
  - Sueño
- Gráficos simples de líneas
- Estadísticas detalladas:
  - Promedio
  - Máximo
  - Mínimo
  - Tendencia
- Indicadores de navegación (dots)

**Flujo:**
- Accesible desde dashboard
- Muestra histórico de cada métrica
- Permite cambiar período de visualización
- Carousel deslizable entre métricas

**Estado:** ✅ Completo

---

### 4. **Dialog de Confirmación** (`04-dialog-confirmation.html`)
**Propósito:** Componente reutilizable para confirmaciones y acciones

**Componentes:**
- Overlay oscuro de fondo
- Dialog centrado con:
  - Icono o ilustración
  - Título
  - Descripción
  - Botones de acción (Confirmar, Cancelar)

**Casos de Uso:**
- Confirmación de acciones destructivas
- Solicitud de permisos
- Validación de datos
- Confirmación de cambios

**Estado:** ✅ Completo

---

## 🎨 Especificaciones de Diseño

### Colores Base
```
Primary (Acciones):    #4CAF50 (Verde)
Secondary (Info):      #2196F3 (Azul)
Tertiary (Acentos):    #FF9800 (Ámbar)
Background:            #F8F9FA (Gris claro)
Surface:               #FFFFFF (Blanco)
Text Primary:          #1A1C1E (Casi negro)
Text Secondary:        #6C7278 (Gris oscuro)
```

### Tipografía
- **Fuente Principal:** System fonts (-apple-system, Roboto, Segoe UI)
- **Tamaño del cuerpo:** 16px
- **Tamaño de encabezados:** 24px - 32px
- **Line height:** 1.5

### Espaciado
- **Grid:** 8px
- **Padding estándar:** 16px - 24px
- **Gaps entre componentes:** 12px - 20px

### Componentes Base
- **Border radius:** 12px - 24px
- **Sombras:** Sutiles (0 2px 4px rgba...)
- **Touch targets:** Mínimo 44px x 44px

---

## 🔄 Flujos de Navegación

### Flujo Principal
```
INDEX
  ├── Dashboard Principal
  │   ├── Navigation Drawer
  │   ├── Health Metrics (Detalladas)
  │   └── Acciones rápidas
  │
  ├── Navigation Drawer
  │   ├── Métricas
  │   ├── Consultas
  │   ├── Objetivos
  │   ├── Configuración
  │   └── Ayuda
  │
  └── Dialogs
      ├── Confirmación
      ├── Error
      └── Éxito
```

---

## 📊 Estructura de Archivos

```
wireframes/
├── INDEX.html                         # Página de índice y navegación
├── 01-dashboard-main.html            # Pantalla principal
├── 02-navigation-drawer.html         # Menú lateral
├── 03-health-metrics.html            # Métricas detalladas
├── 04-dialog-confirmation.html       # Dialogs y modales
├── README-wireframes.md              # Este archivo
└── [Screenshots y referencia visual]
```

---

## ✨ Características de los Wireframes

### Funcionalidad Interactiva
- ✅ Navegación entre pantallas
- ✅ Estados hover y click
- ✅ Drawer modal con overlay
- ✅ Carousel de métricas (simulado)
- ✅ Selector de período funcional
- ✅ Buttons y links interactivos

### Responsive Design
- ✅ Optimizado para móvil (375px)
- ✅ Adaptable a tablets
- ✅ Compatible con desktop

### Accesibilidad Base
- ✅ Estructura semántica HTML
- ✅ Contraste de colores WCAG AA
- ✅ Touch targets de 44px mínimo
- ✅ Navegación por teclado básica

---

## 🚀 Cómo Usar

### Ver los Wireframes
1. Abre `INDEX.html` en tu navegador
2. Navega entre las diferentes pantallas
3. Interactúa con los elementos de la interfaz

### Servir localmente
```bash
cd /workspaces/Proyecto_GlobalFin/aura-wellness/wireframes
python3 -m http.server 8000
# Abre http://localhost:8000 en tu navegador
```

### Propósito de Cada Pantalla

| Pantalla | Propósito | Validación |
|----------|-----------|-----------|
| Dashboard | Resumen y acciones rápidas | Flujo principal funciona |
| Drawer | Navegación secundaria | Menú navegable |
| Metrics | Detalles y histórico | Visualización de datos |
| Dialog | Confirmaciones y aceptación | Modales funcionan |

---

## ✅ Validación de Wireframes

### Checklist de Validación
- [x] Todas las pantallas crean correctamente
- [x] Navegación entre pantallas funciona
- [x] Componentes son reconocibles
- [x] Flujos lógicos y consistentes
- [x] Responsive en móvil
- [x] Accesibilidad base implementada

### Métricas
- **Pantallas:** 4 principales + 1 índice
- **Componentes únicos:** 15+
- **Líneas de código:** 2000+
- **Tamaño total:** 444KB

---

## 🎯 Próximos Pasos

### Fase de Alta Fidelidad
1. ✅ Usar estas wireframes como base
2. ✅ Aplicar Material Design 3
3. ✅ Añadir ilustraciones y iconos
4. ✅ Implementar animaciones
5. ✅ Crear design tokens

### Fase de Desarrollo (Flutter)
1. Convertir wireframes a Flutter Widgets
2. Integrar con BLoC para estado
3. Conectar con backend
4. Implementar autenticación
5. Testing y refinamiento

---

## 📝 Notas Técnicas

### Tecnologías Usadas
- **HTML5:** Estructura semántica
- **CSS3:** Estilos y responsive design
- **Vanilla JavaScript:** Interactividad básica
- **CSS Grid/Flexbox:** Layout moderno

### Browser Support
- Chrome (últimas 2 versiones)
- Firefox (últimas 2 versiones)
- Safari (últimas 2 versiones)
- Edge (últimas 2 versiones)

### Performance
- Carga rápida sin dependencias externas
- Estilos incrustados para rapidez
- Imágenes optimizadas
- Sin librerías externas

---

## 👤 Autor

**Aura Wellness Team**  
Proyecto: Aplicación de Bienestar Digital  
Versión: 1.0.0 - Low-Fidelity Wireframes  
Fecha: Marzo 4, 2026

---

## 📞 Contacto

Para preguntas sobre los wireframes:
- 📧 carlospomadev@gmail.com
- 🔗 GitHub: [Proyecto_GlobalFin](https://github.com/carlospomadev/Proyecto_GlobalFin)

---

*Última actualización: Marzo 4, 2026*
