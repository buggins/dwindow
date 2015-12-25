module dwindow.core.events;


/// Mouse flag bits (mouse buttons and keyboard modifiers) for MouseEvent
enum MouseFlag : ushort {
    // mouse buttons
    /// Left mouse button is down
    LButton = 0x0001,
    /// Middle mouse button is down
    MButton = 0x0010,
    /// Right mouse button is down
    RButton = 0x0002,
    /// X1 mouse button is down
    XButton1= 0x0020,
    /// X2 mouse button is down
    XButton2= 0x0040,

    // keyboard modifiers
    /// Ctrl key is down
    Control = 0x0008,
    /// Shift key is down
    Shift   = 0x0004,
    /// Alt key is down
    Alt     = 0x0080,
}

/// Mouse button codes for MouseEvent
enum MouseButton : ubyte {
    /// no button
    None,
    /// left mouse button
    Left = MouseFlag.LButton,
    /// right mouse button
    Right = MouseFlag.RButton,
    /// right mouse button
    Middle = MouseFlag.MButton,
    /// additional mouse button 1
    XButton1 = MouseFlag.XButton1, // additional button 1
    /// additional mouse button 2
    XButton2 = MouseFlag.XButton2, // additional button 2
}

/// converts MouseButton to MouseFlag
ushort mouseButtonToFlag(MouseButton btn) {
    switch(btn) with (MouseButton) {
        case Left: return MouseFlag.LButton;
        case Right: return MouseFlag.RButton;
        case Middle: return MouseFlag.MButton;
        case XButton1: return MouseFlag.XButton1;
        case XButton2: return MouseFlag.XButton2;
        default: return 0;
    }
}


/// Keyboard actions for KeyEvent
enum KeyAction : uint {
    /// key is pressed
    KeyDown,
    /// key is released
    KeyUp,
    /// text is entered
    Text,
    /// repeated key down
    Repeat,
}

/// Keyboard flags for KeyEvent
enum KeyFlag : uint {
    /// Ctrl key is down
    Control = 0x0008,
    /// Shift key is down
    Shift   = 0x0004,
    /// Alt key is down
    Alt     = 0x0080,
    /// Right Ctrl key is down
    RControl = 0x0108,
    /// Right Shift key is down
    RShift   = 0x0104,
    /// Right Alt key is down
    RAlt     = 0x0180,
    /// Left Ctrl key is down
    LControl = 0x0208,
    /// Left Shift key is down
    LShift   = 0x0204,
    /// Left Alt key is down
    LAlt     = 0x0280
}

/// Key code constants for KeyEvent
enum KeyCode : uint {
    /// backspace
    BACK = 8,
    /// tab
    TAB = 9,
    /// return / enter key
    RETURN = 0x0D,
    /// shift
    SHIFT = 0x10,
    /// ctrl
    CONTROL = 0x11,
    /// alt
    ALT = 0x12, // VK_MENU
    /// pause
    PAUSE = 0x13,
    /// caps lock
    CAPS = 0x14, // VK_CAPITAL, caps lock
    /// esc
    ESCAPE = 0x1B, // esc
    /// space
    SPACE = 0x20,
    /// page up
    PAGEUP = 0x21, // VK_PRIOR
    /// page down
    PAGEDOWN = 0x22, // VK_NEXT
    /// end
    END = 0x23, // VK_END
    /// home
    HOME = 0x24, // VK_HOME
    /// left arrow
    LEFT = 0x25,
    /// up arrow
    UP = 0x26,
    /// right arrow
    RIGHT = 0x27,
    /// down arrow
    DOWN = 0x28,
    /// ins
    INS = 0x2D,
    /// delete
    DEL = 0x2E,
    /// 0
    KEY_0 = 0x30,
    /// 1
    KEY_1 = 0x31,
    /// 2
    KEY_2 = 0x32,
    /// 3
    KEY_3 = 0x33,
    /// 4
    KEY_4 = 0x34,
    /// 5
    KEY_5 = 0x35,
    /// 6
    KEY_6 = 0x36,
    /// 7
    KEY_7 = 0x37,
    /// 8
    KEY_8 = 0x38,
    /// 9
    KEY_9 = 0x39,
    /// A
    KEY_A = 0x41,
    /// B
    KEY_B = 0x42,
    /// C
    KEY_C = 0x43,
    /// D
    KEY_D = 0x44,
    /// E
    KEY_E = 0x45,
    /// F
    KEY_F = 0x46,
    /// G
    KEY_G = 0x47,
    /// H
    KEY_H = 0x48,
    /// I
    KEY_I = 0x49,
    /// J
    KEY_J = 0x4a,
    /// K
    KEY_K = 0x4b,
    /// L
    KEY_L = 0x4c,
    /// M
    KEY_M = 0x4d,
    /// N
    KEY_N = 0x4e,
    /// O
    KEY_O = 0x4f,
    /// P
    KEY_P = 0x50,
    /// Q
    KEY_Q = 0x51,
    /// R
    KEY_R = 0x52,
    /// S
    KEY_S = 0x53,
    /// T
    KEY_T = 0x54,
    /// U
    KEY_U = 0x55,
    /// V
    KEY_V = 0x56,
    /// W
    KEY_W = 0x57,
    /// X
    KEY_X = 0x58,
    /// Y
    KEY_Y = 0x59,
    /// Z
    KEY_Z = 0x5a,
    /// [
    KEY_BRACKETOPEN = 0xDB,
    /// ]
    KEY_BRACKETCLOSE = 0xDD,
    /// key /
    KEY_DIVIDE = 0x6F,
    /// key +
    KEY_ADD = 0x6B,
    /// key -
    KEY_MULTIPLY = 0x6A,
    /// key ,
    KEY_COMMA = 0xBC,
    /// key .
    KEY_PERIOD = 0xBE,
    /// key -
    KEY_SUBTRACT = 0x6D,
    /// left win key
    LWIN = 0x5b,
    /// right win key
    RWIN = 0x5c,
    /// numpad 0
    NUM_0 = 0x60,
    /// numpad 1
    NUM_1 = 0x61,
    /// numpad 2
    NUM_2 = 0x62,
    /// numpad 3
    NUM_3 = 0x63,
    /// numpad 4
    NUM_4 = 0x64,
    /// numpad 5
    NUM_5 = 0x65,
    /// numpad 6
    NUM_6 = 0x66,
    /// numpad 7
    NUM_7 = 0x67,
    /// numpad 8
    NUM_8 = 0x68,
    /// numpad 9
    NUM_9 = 0x69,
    /// numpad *
    MUL = 0x6A,
    /// numpad +
    ADD = 0x6B,
    /// numpad /
    DIV = 0x6F,
    /// numpad -
    SUB = 0x6D,
    /// numpad .
    DECIMAL = 0x6E,
    /// F1
    F1 = 0x70,
    /// F2
    F2 = 0x71,
    /// F3
    F3 = 0x72,
    /// F4
    F4 = 0x73,
    /// F5
    F5 = 0x74,
    /// F6
    F6 = 0x75,
    /// F7
    F7 = 0x76,
    /// F8
    F8 = 0x77,
    /// F9
    F9 = 0x78,
    /// F10
    F10 = 0x79,
    /// F11
    F11 = 0x7a,
    /// F12
    F12 = 0x7b,
    /// F13
    F13 = 0x7c,
    /// F14
    F14 = 0x7d,
    /// F15
    F15 = 0x7e,
    /// F16
    F16 = 0x7f,
    /// F17
    F17 = 0x80,
    /// F18
    F18 = 0x81,
    /// F19
    F19 = 0x82,
    /// F20
    F20 = 0x83,
    /// F21
    F21 = 0x84,
    /// F22
    F22 = 0x85,
    /// F23
    F23 = 0x86,
    /// F24
    F24 = 0x87,
    /// num lock
    NUMLOCK = 0x90,
    /// scroll lock
    SCROLL = 0x91, // scroll lock
    /// left shift
    LSHIFT = 0xA0,
    /// right shift
    RSHIFT = 0xA1,
    /// left ctrl
    LCONTROL = 0xA2,
    /// right ctrl
    RCONTROL = 0xA3,
    /// left alt
    LALT = 0xA4,
    /// right alt
    RALT = 0xA5,
    //LMENU = 0xA4, //VK_LMENU
    //RMENU = 0xA5,
    /// ;
    SEMICOLON = 0x201, 
    /// ~
    TILDE = 0x202,
    /// '
    QUOTE = 0x203,
    /// /
    SLASH = 0x204,
    /// \
    BACKSLASH = 0x205,
    /// =
    EQUAL = 0x206,
}

