Before proposing or writing any code, first build a clear mental model of the current system:

* Identify the tech stack (e.g., React, Next.js, Vue, Tailwind, shadcn/ui).
* Understand the existing design tokens (colors, spacing, typography, radii, shadows), global styles, and utility patterns.
* Review the current component architecture (atoms/molecules/organisms, layout primitives) and naming conventions.
* Note any constraints (legacy CSS, design library in use, performance, or bundle-size considerations).

Ask the user focused questions to understand their goals. Determine if they want:

* a specific component or page redesigned in the new style,
* existing components refactored to the new system, or
* new pages/features built entirely in the new style.

Once you understand the context and scope, execute the following:

* Propose a concise implementation plan that follows best practices, prioritizing:
* centralizing design tokens,
* reusability and composability of components,
* minimizing duplication and one-off styles,
* long-term maintainability and clear naming.


* When writing code, match the user’s existing patterns (folder structure, naming, styling approach, and component patterns).
* Explain your reasoning briefly as you go, so the user understands why you make specific architectural or design choices.

Always aim to:

* Preserve or improve accessibility.
* Maintain visual consistency with the provided design system.
* Leave the codebase in a cleaner, more coherent state than you found it.
* Ensure layouts are responsive and usable across devices.
* Make deliberate, creative design choices (layout, motion, interaction details, and typography) that express the design system’s personality.


## Design Philosophy

**Core Principles**: Altruistic, Authentic, Artistic, and Elegant. This style relies on clean composition, utilizing expansive whitespace, strong typographic hierarchy, and purposeful accents. Every element must feel intentional and inspiring, creating a gallery-like atmosphere where content is the primary focus.

**Vibe**: Minimalist, Inspiring, Trustworthy, Elegant, Calm, Structured.

**The Artistic Promise**: This design provides a clear and focused visual system. It functions as a refined canvas where Deep Blue offers structure and readability, while Gold provides warmth and interactive cues against a pure White background.

---

## Design Token System

### Color System

**Foundation Colors**:

* **background**: `#FFFFFF` (Pure White) - The primary canvas for all layouts.
* **backgroundAlt**: `#F8F9FA` (Soft Gray) - Subtle surface differentiation for secondary panels.
* **foreground**: `#0A1626` (Deep Blue) - Primary text and structural elements.
* **muted**: `#E2E8F0` (Light Gray) - Borders, dividers, and disabled states.
* **mutedForeground**: `#64748B` (Slate) - Secondary text, labels, and metadata.

**Accent Colors**:

* **accent**: `#A88B52` (Elegant Gold) - Primary interactive color, highlights, and focus states.
* **accentSecondary**: `#0A1626` (Deep Blue) - Used for primary solid buttons to ground the design.
* **accentForeground**: `#FFFFFF` (White) - Text on solid Deep Blue or Gold buttons.

**Color Usage Rules**:

1. **White Space**: Treat White as an active design element. Use it generously to frame content.
2. **Deep Blue for Structure**: Use `#0A1626` for all primary typography, high-contrast borders, and primary actions.
3. **Gold for Intent**: Reserve `#A88B52` for hover states, active links, important highlights, and secondary actions.
4. **Contrast**: Maintain strict accessibility ratios. Deep Blue on White provides excellent readability.

### Typography System

**Font Families**:

* **Heading Font**: `'Playfair Display', serif` - Elegant, artistic serif for titles and major headings.
* **Body Font**: `'Inter', sans-serif` - Clean, highly legible geometric sans-serif for UI elements and reading.
* **Display Font**: `'Playfair Display', serif` - Used in lighter weights for large, inspiring quotes or hero text.

**Type Scale & Hierarchy**:

* **Display Headings**: `text-5xl` to `text-7xl` (48px-72px), Playfair Display, `leading-tight`, `tracking-tight`.
* **Section Headings**: `text-3xl` to `text-4xl` (30px-36px), Playfair Display.
* **Subsection Headings**: `text-xl` to `text-2xl` (20px-24px), Inter, `font-medium`.
* **Body Text**: `text-base` to `text-lg` (16px-18px), Inter, `leading-relaxed` (1.6).
* **Labels/Overlines**: `text-xs` to `text-sm` (12px-14px), Inter, `uppercase`, `tracking-widest`, `text-[#A88B52]`.

**Font Weight Distribution**:

* Headings: Regular to Medium (400-500) to maintain an elegant, unforced appearance.
* Body: Light to Regular (300-400).
* Labels: Medium (500).

### Radius & Border System

**Border Radius Values**:

* **Default**: `0px` (`rounded-none`) or `2px` (`rounded-sm`) - Sharp or very slightly softened corners for a crisp, gallery-like feel.
* **Images**: `0px` - Keep images sharp and rectangular to maintain the artistic composition.

**Border Styling**:

* **Thickness**: `1px` standard.
* **Color**: `#E2E8F0` for structural dividers, `#A88B52` for elegant accents.
* **Pattern**: Solid lines only.

### Shadows & Depth

**Shadow Philosophy**: Shadows should be nearly invisible. Rely on spacing and subtle borders to separate elements rather than heavy elevation.

**Shadow Recipes**:

1. **Card Elevation**:
```css
shadow: none
border: 1px solid #E2E8F0
hover: 0 10px 30px -10px rgba(10, 22, 38, 0.05)

```


2. **Focus Ring**:
```css
ring-1 ring-[#A88B52] ring-offset-2 ring-offset-[#FFFFFF]

```



---

## Component Styling Principles

### Buttons

**Visual Treatment**:

* Font: Inter.
* Text: Standard casing or uppercase with wide tracking for small buttons.
* Radius: `0px` or `2px`.

**Primary Button** (Deep Blue):

* Background: `#0A1626`
* Text: `#FFFFFF`
* Hover: Lighten background slightly to `#15243B`.
* Padding: `px-8 py-3`.

**Secondary Button** (Gold Accent):

* Background: Transparent
* Border: `1px solid #A88B52`
* Text: `#A88B52`
* Hover: Background `#A88B52`, Text `#FFFFFF`.

**Ghost Button**:

* Background: Transparent
* Text: `#0A1626`
* Hover: Text `#A88B52` with a subtle horizontal translation (`translate-x-1`).

### Cards & Containers

**Structure**:

* Background: `#FFFFFF` or `#F8F9FA`.
* Border: `1px solid #E2E8F0`.
* Padding: Generous, typically `p-8` to `p-12`.
* Hover Behavior: Subtle shadow increase and a very slight vertical lift (`-translate-y-1`).

### Form Inputs

**Text Inputs**:

* Background: `#FFFFFF`.
* Border: `border-b border-[#E2E8F0]` (Line-only design) or full `1px border border-[#E2E8F0]`.
* Text: `#0A1626`.
* Focus State: Border color changes to `#A88B52`, remove default outline.

---

## Layout Principles

### Spacing Rhythm

**Base Grid**: 8px and 12px hybrid system.

* Micro spacing: `gap-2` to `gap-4`.
* Element spacing: `gap-6` to `gap-10`.
* Section spacing: `py-20` to `py-32`. The whitespace between sections is critical for the elegant feel.

**Composition & Alignment**:

* Embrace asymmetrical layouts. Pair a large image on one side with typography anchored to the bottom of the opposite column.
* Use wide margins. Constrain text width (`max-w-prose`) to ensure optimal reading length.

### Section Separators

* Use expansive whitespace instead of physical lines where possible.
* When necessary, use a delicate `1px` line (`#E2E8F0`) that spans only partially across the container (e.g., `w-1/3`).

---

## The Signature Elements

These are the mandatory elements that define the Artistic Minimalism style:

1. **Massive Whitespace**: Margins and padding should feel almost uncomfortably large. This provides the 'gallery' feel.
2. **Gold Overlines**: Use uppercase `#A88B52` text with wide tracking above major headings to establish context elegantly.
3. **Typographic Contrast**: The stark difference between the large, elegant Playfair Display serifs and the clean, small Inter sans-serifs.
4. **Deep Blue Anchors**: Use `#0A1626` for large footer areas or specific highlight sections to ground the floating white designs.
5. **Image Composition**: Images should be high-quality, authentic, and often uncropped. Let them dictate the flow of the adjacent text.

---

## Animation & Motion

**Motion Philosophy**: Fluid, unobtrusive, and calm.

**Timing Functions**:

* Default: `ease-out`.
* Duration: `300ms` for colors, `500ms` for layout shifts or image reveals.

**Transform Patterns**:

* Image hover: Extremely subtle scale (`scale-[1.02]`).
* Link hover: Fading underline or subtle color shift to Gold.
* Page load: Gentle fade-ins and upward micro-translations (`translate-y-4` to `0`).

---

## Iconography

**Icon Library**: Fine-line, minimalist icons (e.g., Phosphor Icons light weight, or Lucide with stroke-width 1.25).

**Styling Rules**:

* Color: `#0A1626` for standard actions, `#A88B52` for active or highlight states.
* Size: Keep icons small and proportional to the text (`w-5 h-5`).
* Avoid enclosing icons in heavy shapes or circles; let them breathe on the canvas.

---

## Anti-Patterns

### Avoid:

1. **Clutter**: Do not pack elements tightly together.
2. **Heavy Drop Shadows**: Remove all thick, dark shadows.
3. **Rounded Corners**: Avoid heavy border-radii (like `rounded-2xl` or pill shapes).
4. **Vibrant Primary Colors**: Stick strictly to the White, Deep Blue, and Gold palette. Avoid generic reds, greens, or bright blues.
5. **Over-animation**: No bouncing, spinning, or heavy parallax effects.
6. **Complex Backgrounds**: Avoid gradients, heavy patterns, or textures. The background must remain pure and flat.

---

## Responsive Strategy

* **Mobile**: Maintain large typography scales but reduce section padding. Ensure single-column layouts have strong left-alignment.
* **Tablet**: Begin introducing asymmetric two-column layouts.
* **Desktop**: Maximize the use of the grid. Allow images to break out of text containers for an editorial layout feel.

---

## Design Token Reference

```javascript
export const artisticTokens = {
  colors: {
    background: '#FFFFFF',
    backgroundAlt: '#F8F9FA',
    foreground: '#0A1626',
    muted: '#E2E8F0',
    mutedForeground: '#64748B',
    accent: '#A88B52',
    accentSecondary: '#0A1626',
    border: '#E2E8F0',
  },
  fonts: {
    heading: "'Playfair Display', serif",
    body: "'Inter', sans-serif",
    display: "'Playfair Display', serif",
  },
  radius: {
    default: '0px',
    subtle: '2px',
  },
  transitions: {
    fast: '150ms ease-out',
    base: '300ms ease-out',
    slow: '500ms ease-out',
  },
  spacing: {
    section: ['py-20', 'py-32'],
    card: ['p-8', 'p-12'],
  }
};

```