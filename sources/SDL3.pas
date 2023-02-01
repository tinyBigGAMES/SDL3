(****************************************************************************
                                                                      
    .:-======-:.  :---------::.       .----:                .         
  -+************= +*************=:    -****+                 .:.      
 +****+-...::=+*= +****+---=+*****+.  -****+                   .:-    
.*****:        .: +****=      =*****: -****+                    ..-.  
 ******+=-::.     +****=       =*****.-*****                     .-*. 
 :*##########*+-  +####=       .#####:-####*                      .-= 
   :=+*#########* *####+       :#####:-####*                       :=:
        .:-+#####:*####+      .*####+ -####*                      .+*-
-#=:       .#####:*####+    :=#####+. -#####                       ++:
-%%%%#*+++*%%%%%= *%%%%###%%%%%%%#-   =%%%%#########+           .:+++.
:+*#%%%%%%%%#*=.  *%%%%%%%%##*+=:     =%%%%%%%%%%%%%+           -*#+- 
    ..:::::.      .:.    .  ...          ..  :                 :+*+:. 
                  -=+==+=++.=-======+=+=+===:+:+====-       :+*++-..  
                       .                                  .-++=-...   
                                                       =#++=-:...     
                                                 .--:===-::...        
                   . .                .   ..=::----:::.....           
                         ....:::-:::::-::::::........                 

     Simple DirectMedia Layer for Pascal (Win64)
 
Includes the following open-sources libraries:
* SDL3      - https://github.com/libsdl-org/SDL
* miniaudio - https://github.com/mackron/miniaudio
* nbnet     - https://github.com/nathhB/nbnet
* Nuklear   - https://github.com/Immediate-Mode-UI/Nuklear
* Parson    - https://github.com/kgabis/parson
* physfs    - https://github.com/icculus/physfs
* pl_mpeg   - https://github.com/phoboslab/pl_mpeg
* stb       - https://github.com/nothings/stb 
* tmx       - https://github.com/baylej/tmx
* zlib      - https://github.com/madler/zlib

Copyright © 2022-present tinyBigGAMES™ LLC
All Rights Reserved.

Website: https://tinybiggames.com
Email  : mailto:support@tinybiggames.com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software in
   a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

2. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

3. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

4. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived
   from this software without specific prior written permission.

5. All video, audio, graphics and other content accessed through the
   software in this distro is the property of the applicable content owner
   and may be protected by applicable copyright law. This License gives
   Customer no rights to such content, and Company disclaims any liability
   for misuse of content.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*****************************************************************************)

unit SDL3;

{$IFDEF FPC}
  {$MODE DELPHIUNICODE}
{$ENDIF}

{$WARN SYMBOL_DEPRECATED OFF}
{$WARN SYMBOL_PLATFORM OFF}

{$WARN UNIT_PLATFORM OFF}
{$WARN UNIT_DEPRECATED OFF}

{$Z4}
{$A8}

{$INLINE AUTO}

{$IFNDEF WIN64}
  {$MESSAGE Error 'Unsupported platform'}
{$ENDIF}

interface

const
  NK_INCLUDE_FIXED_TYPES = 1;
  NK_INCLUDE_STANDARD_IO = 1;
  NK_INCLUDE_STANDARD_VARARGS = 1;
  NK_INCLUDE_DEFAULT_ALLOCATOR = 1;
  NK_INCLUDE_VERTEX_BUFFER_OUTPUT = 1;
  NK_INCLUDE_FONT_BAKING = 1;
  NK_INCLUDE_DEFAULT_FONT = 1;
  HAVE_WINAPIFAMILY_H = 1;
  WINAPI_FAMILY_DESKTOP_APP = 100;
  WINAPI_FAMILY = WINAPI_FAMILY_DESKTOP_APP;
  WINAPI_PARTITION_DESKTOP = (WINAPI_FAMILY=WINAPI_FAMILY_DESKTOP_APP);
  SIZE_MAX = $ffffffffffffffff;
  SDL_SIZE_MAX = SIZE_MAX;
  SDL_FLT_EPSILON = 1.1920928955078125e-07;
  SDL_PI_D = 3.141592653589793238462643383279502884;
  SDL_PI_F = 3.141592653589793238462643383279502884;
  SDL_ASSERT_LEVEL = 1;
  SDL_LIL_ENDIAN = 1234;
  SDL_BIG_ENDIAN = 4321;
  SDL_BYTEORDER = SDL_LIL_ENDIAN;
  SDL_FLOATWORDORDER = SDL_BYTEORDER;
  SDL_MUTEX_TIMEDOUT = 1;
  SDL_MUTEX_MAXWAIT = -1;
  SDL_RWOPS_UNKNOWN = 0;
  SDL_RWOPS_WINFILE = 1;
  SDL_RWOPS_STDFILE = 2;
  SDL_RWOPS_JNIFILE = 3;
  SDL_RWOPS_MEMORY = 4;
  SDL_RWOPS_MEMORY_RO = 5;
  SDL_RW_SEEK_SET = 0;
  SDL_RW_SEEK_CUR = 1;
  SDL_RW_SEEK_END = 2;
  SDL_AUDIO_MASK_BITSIZE = ($FF);
  SDL_AUDIO_MASK_DATATYPE = (1 shl 8);
  SDL_AUDIO_MASK_ENDIAN = (1 shl 12);
  SDL_AUDIO_MASK_SIGNED = (1 shl 15);
  AUDIO_U8 = $0008;
  AUDIO_S8 = $8008;
  AUDIO_U16LSB = $0010;
  AUDIO_S16LSB = $8010;
  AUDIO_U16MSB = $1010;
  AUDIO_S16MSB = $9010;
  AUDIO_U16 = AUDIO_U16LSB;
  AUDIO_S16 = AUDIO_S16LSB;
  AUDIO_S32LSB = $8020;
  AUDIO_S32MSB = $9020;
  AUDIO_S32 = AUDIO_S32LSB;
  AUDIO_F32LSB = $8120;
  AUDIO_F32MSB = $9120;
  AUDIO_F32 = AUDIO_F32LSB;
  AUDIO_U16SYS = AUDIO_U16LSB;
  AUDIO_S16SYS = AUDIO_S16LSB;
  AUDIO_S32SYS = AUDIO_S32LSB;
  AUDIO_F32SYS = AUDIO_F32LSB;
  SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = $00000001;
  SDL_AUDIO_ALLOW_FORMAT_CHANGE = $00000002;
  SDL_AUDIO_ALLOW_CHANNELS_CHANGE = $00000004;
  SDL_AUDIO_ALLOW_SAMPLES_CHANGE = $00000008;
  SDL_AUDIO_ALLOW_ANY_CHANGE = (SDL_AUDIO_ALLOW_FREQUENCY_CHANGE or SDL_AUDIO_ALLOW_FORMAT_CHANGE or SDL_AUDIO_ALLOW_CHANNELS_CHANGE or SDL_AUDIO_ALLOW_SAMPLES_CHANGE);
  SDL_MIX_MAXVOLUME = 128;
  SDL_CACHELINE_SIZE = 128;
  SDL_STANDARD_GRAVITY = 9.80665;
  SDL_JOYSTICK_AXIS_MAX = 32767;
  SDL_JOYSTICK_AXIS_MIN = -32768;
  SDL_IPHONE_MAX_GFORCE = 5.0;
  SDL_VIRTUAL_JOYSTICK_DESC_VERSION = 1;
  SDL_HAT_CENTERED = $00;
  SDL_HAT_UP = $01;
  SDL_HAT_RIGHT = $02;
  SDL_HAT_DOWN = $04;
  SDL_HAT_LEFT = $08;
  SDL_HAT_RIGHTUP = (SDL_HAT_RIGHT or SDL_HAT_UP);
  SDL_HAT_RIGHTDOWN = (SDL_HAT_RIGHT or SDL_HAT_DOWN);
  SDL_HAT_LEFTUP = (SDL_HAT_LEFT or SDL_HAT_UP);
  SDL_HAT_LEFTDOWN = (SDL_HAT_LEFT or SDL_HAT_DOWN);
  SDLK_SCANCODE_MASK = (1 shl 30);
  SDL_ALPHA_OPAQUE = 255;
  SDL_ALPHA_TRANSPARENT = 0;
  SDL_SWSURFACE = 0;
  SDL_PREALLOC = $00000001;
  SDL_RLEACCEL = $00000002;
  SDL_DONTFREE = $00000004;
  SDL_SIMD_ALIGNED = $00000008;
  SDL_WINDOWPOS_UNDEFINED_MASK = $1FFF0000;
  SDL_WINDOWPOS_UNDEFINED = SDL_WINDOWPOS_UNDEFINED_MASK or 0;
  SDL_WINDOWPOS_CENTERED_MASK = $2FFF0000;
  SDL_WINDOWPOS_CENTERED = SDL_WINDOWPOS_CENTERED_MASK or 0;
  SDL_BUTTON_LEFT = 1;
  SDL_BUTTON_MIDDLE = 2;
  SDL_BUTTON_RIGHT = 3;
  SDL_BUTTON_X1 = 4;
  SDL_BUTTON_X2 = 5;
  SDL_TOUCH_MOUSEID = -1;
  SDL_MOUSE_TOUCHID = -1;
  SDL_RELEASED = 0;
  SDL_PRESSED = 1;
  SDL_TEXTEDITINGEVENT_TEXT_SIZE = (32);
  SDL_TEXTINPUTEVENT_TEXT_SIZE = (32);
  SDL_HAPTIC_CONSTANT = (1 shl 0);
  SDL_HAPTIC_SINE = (1 shl 1);
  SDL_HAPTIC_LEFTRIGHT = (1 shl 2);
  SDL_HAPTIC_TRIANGLE = (1 shl 3);
  SDL_HAPTIC_SAWTOOTHUP = (1 shl 4);
  SDL_HAPTIC_SAWTOOTHDOWN = (1 shl 5);
  SDL_HAPTIC_RAMP = (1 shl 6);
  SDL_HAPTIC_SPRING = (1 shl 7);
  SDL_HAPTIC_DAMPER = (1 shl 8);
  SDL_HAPTIC_INERTIA = (1 shl 9);
  SDL_HAPTIC_FRICTION = (1 shl 10);
  SDL_HAPTIC_CUSTOM = (1 shl 11);
  SDL_HAPTIC_GAIN = (1 shl 12);
  SDL_HAPTIC_AUTOCENTER = (1 shl 13);
  SDL_HAPTIC_STATUS = (1 shl 14);
  SDL_HAPTIC_PAUSE = (1 shl 15);
  SDL_HAPTIC_POLAR = 0;
  SDL_HAPTIC_CARTESIAN = 1;
  SDL_HAPTIC_SPHERICAL = 2;
  SDL_HAPTIC_STEERING_AXIS = 3;
  SDL_HAPTIC_INFINITY = 4294967295;
  SDL_HINT_ACCELEROMETER_AS_JOYSTICK = 'SDL_ACCELEROMETER_AS_JOYSTICK';
  SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED = 'SDL_ALLOW_ALT_TAB_WHILE_GRABBED';
  SDL_HINT_ALLOW_TOPMOST = 'SDL_ALLOW_TOPMOST';
  SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = 'SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION';
  SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = 'SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION';
  SDL_HINT_ANDROID_BLOCK_ON_PAUSE = 'SDL_ANDROID_BLOCK_ON_PAUSE';
  SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO = 'SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO';
  SDL_HINT_ANDROID_TRAP_BACK_BUTTON = 'SDL_ANDROID_TRAP_BACK_BUTTON';
  SDL_HINT_APP_NAME = 'SDL_APP_NAME';
  SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS = 'SDL_APPLE_TV_CONTROLLER_UI_EVENTS';
  SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = 'SDL_APPLE_TV_REMOTE_ALLOW_ROTATION';
  SDL_HINT_AUDIO_CATEGORY = 'SDL_AUDIO_CATEGORY';
  SDL_HINT_AUDIO_DEVICE_APP_NAME = 'SDL_AUDIO_DEVICE_APP_NAME';
  SDL_HINT_AUDIO_DEVICE_STREAM_NAME = 'SDL_AUDIO_DEVICE_STREAM_NAME';
  SDL_HINT_AUDIO_DEVICE_STREAM_ROLE = 'SDL_AUDIO_DEVICE_STREAM_ROLE';
  SDL_HINT_AUDIO_RESAMPLING_MODE = 'SDL_AUDIO_RESAMPLING_MODE';
  SDL_HINT_AUTO_UPDATE_JOYSTICKS = 'SDL_AUTO_UPDATE_JOYSTICKS';
  SDL_HINT_AUTO_UPDATE_SENSORS = 'SDL_AUTO_UPDATE_SENSORS';
  SDL_HINT_BMP_SAVE_LEGACY_FORMAT = 'SDL_BMP_SAVE_LEGACY_FORMAT';
  SDL_HINT_DISPLAY_USABLE_BOUNDS = 'SDL_DISPLAY_USABLE_BOUNDS';
  SDL_HINT_EMSCRIPTEN_ASYNCIFY = 'SDL_EMSCRIPTEN_ASYNCIFY';
  SDL_HINT_EMSCRIPTEN_CANVAS_SELECTOR = 'SDL_EMSCRIPTEN_CANVAS_SELECTOR';
  SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = 'SDL_EMSCRIPTEN_KEYBOARD_ELEMENT';
  SDL_HINT_ENABLE_STEAM_CONTROLLERS = 'SDL_ENABLE_STEAM_CONTROLLERS';
  SDL_HINT_EVENT_LOGGING = 'SDL_EVENT_LOGGING';
  SDL_HINT_FORCE_RAISEWINDOW = 'SDL_HINT_FORCE_RAISEWINDOW';
  SDL_HINT_FRAMEBUFFER_ACCELERATION = 'SDL_FRAMEBUFFER_ACCELERATION';
  SDL_HINT_GAMECONTROLLERCONFIG = 'SDL_GAMECONTROLLERCONFIG';
  SDL_HINT_GAMECONTROLLERCONFIG_FILE = 'SDL_GAMECONTROLLERCONFIG_FILE';
  SDL_HINT_GAMECONTROLLERTYPE = 'SDL_GAMECONTROLLERTYPE';
  SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES = 'SDL_GAMECONTROLLER_IGNORE_DEVICES';
  SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = 'SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT';
  SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS = 'SDL_GAMECONTROLLER_USE_BUTTON_LABELS';
  SDL_HINT_GRAB_KEYBOARD = 'SDL_GRAB_KEYBOARD';
  SDL_HINT_HIDAPI_IGNORE_DEVICES = 'SDL_HIDAPI_IGNORE_DEVICES';
  SDL_HINT_IME_INTERNAL_EDITING = 'SDL_IME_INTERNAL_EDITING';
  SDL_HINT_IME_SHOW_UI = 'SDL_IME_SHOW_UI';
  SDL_HINT_IME_SUPPORT_EXTENDED_TEXT = 'SDL_IME_SUPPORT_EXTENDED_TEXT';
  SDL_HINT_IOS_HIDE_HOME_INDICATOR = 'SDL_IOS_HIDE_HOME_INDICATOR';
  SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = 'SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS';
  SDL_HINT_JOYSTICK_HIDAPI = 'SDL_JOYSTICK_HIDAPI';
  SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE = 'SDL_JOYSTICK_HIDAPI_GAMECUBE';
  SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE = 'SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE';
  SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS = 'SDL_JOYSTICK_HIDAPI_JOY_CONS';
  SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS = 'SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS';
  SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS = 'SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS';
  SDL_HINT_JOYSTICK_HIDAPI_LUNA = 'SDL_JOYSTICK_HIDAPI_LUNA';
  SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC = 'SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC';
  SDL_HINT_JOYSTICK_HIDAPI_SHIELD = 'SDL_JOYSTICK_HIDAPI_SHIELD';
  SDL_HINT_JOYSTICK_HIDAPI_PS3 = 'SDL_JOYSTICK_HIDAPI_PS3';
  SDL_HINT_JOYSTICK_HIDAPI_PS4 = 'SDL_JOYSTICK_HIDAPI_PS4';
  SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = 'SDL_JOYSTICK_HIDAPI_PS4_RUMBLE';
  SDL_HINT_JOYSTICK_HIDAPI_PS5 = 'SDL_JOYSTICK_HIDAPI_PS5';
  SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED = 'SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED';
  SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE = 'SDL_JOYSTICK_HIDAPI_PS5_RUMBLE';
  SDL_HINT_JOYSTICK_HIDAPI_STADIA = 'SDL_JOYSTICK_HIDAPI_STADIA';
  SDL_HINT_JOYSTICK_HIDAPI_STEAM = 'SDL_JOYSTICK_HIDAPI_STEAM';
  SDL_HINT_JOYSTICK_HIDAPI_SWITCH = 'SDL_JOYSTICK_HIDAPI_SWITCH';
  SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED = 'SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED';
  SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED = 'SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED';
  SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED = 'SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED';
  SDL_HINT_JOYSTICK_HIDAPI_WII = 'SDL_JOYSTICK_HIDAPI_WII';
  SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED = 'SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX = 'SDL_JOYSTICK_HIDAPI_XBOX';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX_360 = 'SDL_JOYSTICK_HIDAPI_XBOX_360';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED = 'SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS = 'SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE = 'SDL_JOYSTICK_HIDAPI_XBOX_ONE';
  SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED = 'SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED';
  SDL_HINT_JOYSTICK_RAWINPUT = 'SDL_JOYSTICK_RAWINPUT';
  SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT = 'SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT';
  SDL_HINT_JOYSTICK_ROG_CHAKRAM = 'SDL_JOYSTICK_ROG_CHAKRAM';
  SDL_HINT_JOYSTICK_THREAD = 'SDL_JOYSTICK_THREAD';
  SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER = 'SDL_KMSDRM_REQUIRE_DRM_MASTER';
  SDL_HINT_JOYSTICK_DEVICE = 'SDL_JOYSTICK_DEVICE';
  SDL_HINT_LINUX_DIGITAL_HATS = 'SDL_LINUX_DIGITAL_HATS';
  SDL_HINT_LINUX_HAT_DEADZONES = 'SDL_LINUX_HAT_DEADZONES';
  SDL_HINT_LINUX_JOYSTICK_CLASSIC = 'SDL_LINUX_JOYSTICK_CLASSIC';
  SDL_HINT_LINUX_JOYSTICK_DEADZONES = 'SDL_LINUX_JOYSTICK_DEADZONES';
  SDL_HINT_MAC_BACKGROUND_APP = 'SDL_MAC_BACKGROUND_APP';
  SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = 'SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK';
  SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH = 'SDL_MAC_OPENGL_ASYNC_DISPATCH';
  SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS = 'SDL_MOUSE_DOUBLE_CLICK_RADIUS';
  SDL_HINT_MOUSE_DOUBLE_CLICK_TIME = 'SDL_MOUSE_DOUBLE_CLICK_TIME';
  SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = 'SDL_MOUSE_FOCUS_CLICKTHROUGH';
  SDL_HINT_MOUSE_NORMAL_SPEED_SCALE = 'SDL_MOUSE_NORMAL_SPEED_SCALE';
  SDL_HINT_MOUSE_RELATIVE_MODE_CENTER = 'SDL_MOUSE_RELATIVE_MODE_CENTER';
  SDL_HINT_MOUSE_RELATIVE_MODE_WARP = 'SDL_MOUSE_RELATIVE_MODE_WARP';
  SDL_HINT_MOUSE_RELATIVE_SCALING = 'SDL_MOUSE_RELATIVE_SCALING';
  SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE = 'SDL_MOUSE_RELATIVE_SPEED_SCALE';
  SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE = 'SDL_MOUSE_RELATIVE_SYSTEM_SCALE';
  SDL_HINT_MOUSE_RELATIVE_WARP_MOTION = 'SDL_MOUSE_RELATIVE_WARP_MOTION';
  SDL_HINT_MOUSE_TOUCH_EVENTS = 'SDL_MOUSE_TOUCH_EVENTS';
  SDL_HINT_MOUSE_AUTO_CAPTURE = 'SDL_MOUSE_AUTO_CAPTURE';
  SDL_HINT_NO_SIGNAL_HANDLERS = 'SDL_NO_SIGNAL_HANDLERS';
  SDL_HINT_OPENGL_ES_DRIVER = 'SDL_OPENGL_ES_DRIVER';
  SDL_HINT_ORIENTATIONS = 'SDL_IOS_ORIENTATIONS';
  SDL_HINT_POLL_SENTINEL = 'SDL_POLL_SENTINEL';
  SDL_HINT_PREFERRED_LOCALES = 'SDL_PREFERRED_LOCALES';
  SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION = 'SDL_QTWAYLAND_CONTENT_ORIENTATION';
  SDL_HINT_QTWAYLAND_WINDOW_FLAGS = 'SDL_QTWAYLAND_WINDOW_FLAGS';
  SDL_HINT_RENDER_BATCHING = 'SDL_RENDER_BATCHING';
  SDL_HINT_RENDER_LINE_METHOD = 'SDL_RENDER_LINE_METHOD';
  SDL_HINT_RENDER_DIRECT3D11_DEBUG = 'SDL_RENDER_DIRECT3D11_DEBUG';
  SDL_HINT_RENDER_DIRECT3D_THREADSAFE = 'SDL_RENDER_DIRECT3D_THREADSAFE';
  SDL_HINT_RENDER_DRIVER = 'SDL_RENDER_DRIVER';
  SDL_HINT_RENDER_LOGICAL_SIZE_MODE = 'SDL_RENDER_LOGICAL_SIZE_MODE';
  SDL_HINT_RENDER_OPENGL_SHADERS = 'SDL_RENDER_OPENGL_SHADERS';
  SDL_HINT_RENDER_SCALE_QUALITY = 'SDL_RENDER_SCALE_QUALITY';
  SDL_HINT_RENDER_VSYNC = 'SDL_RENDER_VSYNC';
  SDL_HINT_PS2_DYNAMIC_VSYNC = 'SDL_PS2_DYNAMIC_VSYNC';
  SDL_HINT_RETURN_KEY_HIDES_IME = 'SDL_RETURN_KEY_HIDES_IME';
  SDL_HINT_RPI_VIDEO_LAYER = 'SDL_RPI_VIDEO_LAYER';
  SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME = 'SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME';
  SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL = 'SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL';
  SDL_HINT_THREAD_PRIORITY_POLICY = 'SDL_THREAD_PRIORITY_POLICY';
  SDL_HINT_THREAD_STACK_SIZE = 'SDL_THREAD_STACK_SIZE';
  SDL_HINT_TIMER_RESOLUTION = 'SDL_TIMER_RESOLUTION';
  SDL_HINT_TOUCH_MOUSE_EVENTS = 'SDL_TOUCH_MOUSE_EVENTS';
  SDL_HINT_VITA_TOUCH_MOUSE_DEVICE = 'SDL_HINT_VITA_TOUCH_MOUSE_DEVICE';
  SDL_HINT_TV_REMOTE_AS_JOYSTICK = 'SDL_TV_REMOTE_AS_JOYSTICK';
  SDL_HINT_VIDEO_ALLOW_SCREENSAVER = 'SDL_VIDEO_ALLOW_SCREENSAVER';
  SDL_HINT_VIDEO_DOUBLE_BUFFER = 'SDL_VIDEO_DOUBLE_BUFFER';
  SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY = 'SDL_VIDEO_EGL_ALLOW_TRANSPARENCY';
  SDL_HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK = 'SDL_VIDEO_EGL_GETDISPLAY_FALLBACK';
  SDL_HINT_VIDEO_EXTERNAL_CONTEXT = 'SDL_VIDEO_EXTERNAL_CONTEXT';
  SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES = 'SDL_VIDEO_MAC_FULLSCREEN_SPACES';
  SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = 'SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS';
  SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR = 'SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR';
  SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR = 'SDL_VIDEO_WAYLAND_PREFER_LIBDECOR';
  SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION = 'SDL_VIDEO_WAYLAND_MODE_EMULATION';
  SDL_HINT_VIDEO_WAYLAND_EMULATE_MOUSE_WARP = 'SDL_VIDEO_WAYLAND_EMULATE_MOUSE_WARP';
  SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = 'SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT';
  SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL = 'SDL_VIDEO_FOREIGN_WINDOW_OPENGL';
  SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN = 'SDL_VIDEO_FOREIGN_WINDOW_VULKAN';
  SDL_HINT_VIDEO_WIN_D3DCOMPILER = 'SDL_VIDEO_WIN_D3DCOMPILER';
  SDL_HINT_VIDEO_FORCE_EGL = 'SDL_VIDEO_FORCE_EGL';
  SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = 'SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR';
  SDL_HINT_VIDEO_X11_NET_WM_PING = 'SDL_VIDEO_X11_NET_WM_PING';
  SDL_HINT_VIDEO_X11_WINDOW_VISUALID = 'SDL_VIDEO_X11_WINDOW_VISUALID';
  SDL_HINT_VIDEO_X11_XRANDR = 'SDL_VIDEO_X11_XRANDR';
  SDL_HINT_WAVE_FACT_CHUNK = 'SDL_WAVE_FACT_CHUNK';
  SDL_HINT_WAVE_RIFF_CHUNK_SIZE = 'SDL_WAVE_RIFF_CHUNK_SIZE';
  SDL_HINT_WAVE_TRUNCATION = 'SDL_WAVE_TRUNCATION';
  SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING = 'SDL_WINDOWS_DISABLE_THREAD_NAMING';
  SDL_HINT_WINDOWS_ENABLE_MENU_MNEMONICS = 'SDL_WINDOWS_ENABLE_MENU_MNEMONICS';
  SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP = 'SDL_WINDOWS_ENABLE_MESSAGELOOP';
  SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS = 'SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS';
  SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL = 'SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL';
  SDL_HINT_WINDOWS_INTRESOURCE_ICON = 'SDL_WINDOWS_INTRESOURCE_ICON';
  SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL = 'SDL_WINDOWS_INTRESOURCE_ICON_SMALL';
  SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = 'SDL_WINDOWS_NO_CLOSE_ON_ALT_F4';
  SDL_HINT_WINDOWS_USE_D3D9EX = 'SDL_WINDOWS_USE_D3D9EX';
  SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = 'SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN';
  SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN = 'SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN';
  SDL_HINT_WINRT_HANDLE_BACK_BUTTON = 'SDL_WINRT_HANDLE_BACK_BUTTON';
  SDL_HINT_WINRT_PRIVACY_POLICY_LABEL = 'SDL_WINRT_PRIVACY_POLICY_LABEL';
  SDL_HINT_WINRT_PRIVACY_POLICY_URL = 'SDL_WINRT_PRIVACY_POLICY_URL';
  SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT = 'SDL_X11_FORCE_OVERRIDE_REDIRECT';
  SDL_HINT_XINPUT_ENABLED = 'SDL_XINPUT_ENABLED';
  SDL_HINT_DIRECTINPUT_ENABLED = 'SDL_DIRECTINPUT_ENABLED';
  SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = 'SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING';
  SDL_HINT_AUDIO_INCLUDE_MONITORS = 'SDL_AUDIO_INCLUDE_MONITORS';
  SDL_HINT_X11_WINDOW_TYPE = 'SDL_X11_WINDOW_TYPE';
  SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE = 'SDL_QUIT_ON_LAST_WINDOW_CLOSE';
  SDL_HINT_VIDEO_DRIVER = 'SDL_VIDEO_DRIVER';
  SDL_HINT_AUDIO_DRIVER = 'SDL_AUDIO_DRIVER';
  SDL_HINT_KMSDRM_DEVICE_INDEX = 'SDL_KMSDRM_DEVICE_INDEX';
  SDL_HINT_TRACKPAD_IS_TOUCH_ONLY = 'SDL_TRACKPAD_IS_TOUCH_ONLY';
  SDL_MAX_LOG_MESSAGE = 4096;
  SDL_NONSHAPEABLE_WINDOW = -1;
  SDL_INVALID_SHAPE_ARGUMENT = -2;
  SDL_WINDOW_LACKS_SHAPE = -3;
  SDL_MS_PER_SECOND = 1000;
  SDL_US_PER_SECOND = 1000000;
  SDL_NS_PER_SECOND = 1000000000;
  SDL_NS_PER_MS = 1000000;
  SDL_NS_PER_US = 1000;
  SDL_MAJOR_VERSION = 3;
  SDL_MINOR_VERSION = 0;
  SDL_PATCHLEVEL = 0;
  STBTT_MACSTYLE_DONTCARE = 0;
  STBTT_MACSTYLE_BOLD = 1;
  STBTT_MACSTYLE_ITALIC = 2;
  STBTT_MACSTYLE_UNDERSCORE = 4;
  STBTT_MACSTYLE_NONE = 8;
  STBI_VERSION = 1;
  PLM_PACKET_INVALID_TS = -1;
  PLM_AUDIO_SAMPLES_PER_FRAME = 1152;
  PLM_BUFFER_DEFAULT_SIZE = (128*1024);
  NK_UNDEFINED = (-1.0);
  NK_UTF_INVALID = $FFFD;
  NK_UTF_SIZE = 4;
  NK_INPUT_MAX = 16;
  NK_MAX_NUMBER_BUFFER = 64;
  NK_SCROLLBAR_HIDING_TIMEOUT = 4.0;
  NK_TEXTEDIT_UNDOSTATECOUNT = 99;
  NK_TEXTEDIT_UNDOCHARCOUNT = 999;
  NK_MAX_LAYOUT_ROW_TEMPLATE_COLUMNS = 16;
  NK_CHART_MAX_SLOT = 4;
  NK_WINDOW_MAX_NAME = 64;
  NK_BUTTON_BEHAVIOR_STACK_SIZE = 8;
  NK_FONT_STACK_SIZE = 8;
  NK_STYLE_ITEM_STACK_SIZE = 16;
  NK_FLOAT_STACK_SIZE = 32;
  NK_VECTOR_STACK_SIZE = 16;
  NK_FLAGS_STACK_SIZE = 32;
  NK_COLOR_STACK_SIZE = 32;
  NK_PI = 3.141592654;
  NK_MAX_FLOAT_PRECISION = 2;
  MA_VERSION_MAJOR = 0;
  MA_VERSION_MINOR = 11;
  MA_VERSION_REVISION = 11;
  MA_SIZEOF_PTR = 8;
  MA_TRUE = 1;
  MA_FALSE = 0;
  MA_SIZE_MAX = SIZE_MAX;
  MA_SIMD_ALIGNMENT = 32;
  MA_MIN_CHANNELS = 1;
  MA_MAX_CHANNELS = 254;
  MA_MAX_FILTER_ORDER = 8;
  MA_MAX_LOG_CALLBACKS = 4;
  MA_CHANNEL_INDEX_NULL = 255;
  MA_DATA_FORMAT_FLAG_EXCLUSIVE_MODE = (1 shl 1);
  MA_MAX_DEVICE_NAME_LENGTH = 255;
  MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT = $00000001;
  MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT = 64;
  MA_MAX_NODE_BUS_COUNT = 254;
  MA_MAX_NODE_LOCAL_BUS_COUNT = 2;
  MA_NODE_BUS_COUNT_UNKNOWN = 255;
  MA_ENGINE_MAX_LISTENERS = 4;
  MA_SOUND_SOURCE_CHANNEL_COUNT = $FFFFFFFF;
  Z_DEFLATED = 8;
  Z_DEFAULT_STRATEGY = 0;
  APPEND_STATUS_CREATE = 0;
  Z_OK = 0;
  TMX_FLIPPED_HORIZONTALLY = $80000000;
  TMX_FLIPPED_VERTICALLY = $40000000;
  TMX_FLIPPED_DIAGONALLY = $20000000;
  TMX_FLIP_BITS_REMOVAL = $1FFFFFFF;
  PARSON_VERSION_MAJOR = 1;
  PARSON_VERSION_MINOR = 5;
  PARSON_VERSION_PATCH = 0;
  PARSON_VERSION_STRING = '1.5.0';
  NBN_ERROR = -1;
  NBN_RPC_MAX_PARAM_COUNT = 16;
  NBN_RPC_MAX = 32;
  NBN_RPC_STRING_MAX_LENGTH = 256;
  NBN_MAX_CLIENTS = 1024;
  NBN_CONNECTION_VECTOR_INITIAL_CAPACITY = 32;

type
  // Forward declarations
  PUint16 = ^Uint16;
  PUint8 = ^Uint8;
  PPUint8 = ^PUint8;
  PPUTF8Char = ^PUTF8Char;
  PPInteger = ^PInteger;
  PPSingle = ^PSingle;
  PPDouble = ^PDouble;
  PUInt32 = ^UInt32;
  PNativeUInt = ^NativeUInt;
  PSDL_iconv_data_t = Pointer;
  PPSDL_iconv_data_t = ^PSDL_iconv_data_t;
  PSDL_semaphore = Pointer;
  PPSDL_semaphore = ^PSDL_semaphore;
  PSDL_hid_device_ = Pointer;
  PPSDL_hid_device_ = ^PSDL_hid_device_;
  Pnk_style_slide = Pointer;
  PPnk_style_slide = ^Pnk_style_slide;
  Pjson_object_t = Pointer;
  PPjson_object_t = ^Pjson_object_t;
  Pjson_array_t = Pointer;
  PPjson_array_t = ^Pjson_array_t;
  Pjson_value_t = Pointer;
  PPjson_value_t = ^Pjson_value_t;
  PSDL_AssertData = ^SDL_AssertData;
  PSDL_atomic_t = ^SDL_atomic_t;
  PSDL_RWops = ^SDL_RWops;
  PSDL_AudioSpec = ^SDL_AudioSpec;
  PSDL_GUID = ^SDL_GUID;
  PSDL_VirtualJoystickDesc = ^SDL_VirtualJoystickDesc;
  PSDL_GamepadBinding = ^SDL_GamepadBinding;
  PSDL_Color = ^SDL_Color;
  PSDL_Palette = ^SDL_Palette;
  PSDL_PixelFormat = ^SDL_PixelFormat;
  PSDL_Point = ^SDL_Point;
  PSDL_FPoint = ^SDL_FPoint;
  PSDL_Rect = ^SDL_Rect;
  PSDL_FRect = ^SDL_FRect;
  PSDL_Surface = ^SDL_Surface;
  PPSDL_Surface = ^PSDL_Surface;
  PSDL_DisplayMode = ^SDL_DisplayMode;
  PSDL_Keysym = ^SDL_Keysym;
  PSDL_Finger = ^SDL_Finger;
  PSDL_CommonEvent = ^SDL_CommonEvent;
  PSDL_DisplayEvent = ^SDL_DisplayEvent;
  PSDL_WindowEvent = ^SDL_WindowEvent;
  PSDL_KeyboardEvent = ^SDL_KeyboardEvent;
  PSDL_TextEditingEvent = ^SDL_TextEditingEvent;
  PSDL_TextEditingExtEvent = ^SDL_TextEditingExtEvent;
  PSDL_TextInputEvent = ^SDL_TextInputEvent;
  PSDL_MouseMotionEvent = ^SDL_MouseMotionEvent;
  PSDL_MouseButtonEvent = ^SDL_MouseButtonEvent;
  PSDL_MouseWheelEvent = ^SDL_MouseWheelEvent;
  PSDL_JoyAxisEvent = ^SDL_JoyAxisEvent;
  PSDL_JoyHatEvent = ^SDL_JoyHatEvent;
  PSDL_JoyButtonEvent = ^SDL_JoyButtonEvent;
  PSDL_JoyDeviceEvent = ^SDL_JoyDeviceEvent;
  PSDL_JoyBatteryEvent = ^SDL_JoyBatteryEvent;
  PSDL_GamepadAxisEvent = ^SDL_GamepadAxisEvent;
  PSDL_GamepadButtonEvent = ^SDL_GamepadButtonEvent;
  PSDL_GamepadDeviceEvent = ^SDL_GamepadDeviceEvent;
  PSDL_GamepadTouchpadEvent = ^SDL_GamepadTouchpadEvent;
  PSDL_GamepadSensorEvent = ^SDL_GamepadSensorEvent;
  PSDL_AudioDeviceEvent = ^SDL_AudioDeviceEvent;
  PSDL_TouchFingerEvent = ^SDL_TouchFingerEvent;
  PSDL_DropEvent = ^SDL_DropEvent;
  PSDL_SensorEvent = ^SDL_SensorEvent;
  PSDL_QuitEvent = ^SDL_QuitEvent;
  PSDL_OSEvent = ^SDL_OSEvent;
  PSDL_UserEvent = ^SDL_UserEvent;
  PSDL_SysWMEvent = ^SDL_SysWMEvent;
  PSDL_HapticDirection = ^SDL_HapticDirection;
  PSDL_HapticConstant = ^SDL_HapticConstant;
  PSDL_HapticPeriodic = ^SDL_HapticPeriodic;
  PSDL_HapticCondition = ^SDL_HapticCondition;
  PSDL_HapticRamp = ^SDL_HapticRamp;
  PSDL_HapticLeftRight = ^SDL_HapticLeftRight;
  PSDL_HapticCustom = ^SDL_HapticCustom;
  PSDL_hid_device_info = ^SDL_hid_device_info;
  PSDL_Locale = ^SDL_Locale;
  PSDL_MessageBoxButtonData = ^SDL_MessageBoxButtonData;
  PSDL_MessageBoxColor = ^SDL_MessageBoxColor;
  PSDL_MessageBoxColorScheme = ^SDL_MessageBoxColorScheme;
  PSDL_MessageBoxData = ^SDL_MessageBoxData;
  PSDL_RendererInfo = ^SDL_RendererInfo;
  PSDL_Vertex = ^SDL_Vertex;
  PSDL_WindowShapeMode = ^SDL_WindowShapeMode;
  PSDL_version = ^SDL_version;
  Pstbtt__buf = ^stbtt__buf;
  Pstbtt_bakedchar = ^stbtt_bakedchar;
  Pstbtt_aligned_quad = ^stbtt_aligned_quad;
  Pstbtt_packedchar = ^stbtt_packedchar;
  Pstbtt_pack_range = ^stbtt_pack_range;
  Pstbtt_pack_context = ^stbtt_pack_context;
  Pstbtt_fontinfo = ^stbtt_fontinfo;
  Pstbtt_kerningentry = ^stbtt_kerningentry;
  Pstbtt_vertex = ^stbtt_vertex;
  PPstbtt_vertex = ^Pstbtt_vertex;
  Pstbtt__bitmap = ^stbtt__bitmap;
  Pstbi_io_callbacks = ^stbi_io_callbacks;
  Pplm_packet_t = ^plm_packet_t;
  Pplm_plane_t = ^plm_plane_t;
  Pplm_frame_t = ^plm_frame_t;
  Pplm_samples_t = ^plm_samples_t;
  Pnk_color = ^nk_color;
  Pnk_colorf = ^nk_colorf;
  Pnk_vec2 = ^nk_vec2;
  Pnk_vec2i = ^nk_vec2i;
  Pnk_rect = ^nk_rect;
  Pnk_recti = ^nk_recti;
  Pnk_image = ^nk_image;
  Pnk_nine_slice = ^nk_nine_slice;
  Pnk_cursor = ^nk_cursor;
  Pnk_scroll = ^nk_scroll;
  Pnk_allocator = ^nk_allocator;
  Pnk_draw_null_texture = ^nk_draw_null_texture;
  Pnk_convert_config = ^nk_convert_config;
  Pnk_list_view = ^nk_list_view;
  Pnk_user_font_glyph = ^nk_user_font_glyph;
  Pnk_user_font = ^nk_user_font;
  PPnk_user_font = ^Pnk_user_font;
  Pnk_baked_font = ^nk_baked_font;
  Pnk_font_config = ^nk_font_config;
  Pnk_font_glyph = ^nk_font_glyph;
  Pnk_font = ^nk_font;
  Pnk_font_atlas = ^nk_font_atlas;
  PPnk_font_atlas = ^Pnk_font_atlas;
  Pnk_memory_status = ^nk_memory_status;
  Pnk_buffer_marker = ^nk_buffer_marker;
  Pnk_memory = ^nk_memory;
  Pnk_buffer = ^nk_buffer;
  Pnk_str = ^nk_str;
  Pnk_clipboard = ^nk_clipboard;
  Pnk_text_undo_record = ^nk_text_undo_record;
  Pnk_text_undo_state = ^nk_text_undo_state;
  Pnk_text_edit = ^nk_text_edit;
  Pnk_command = ^nk_command;
  Pnk_command_scissor = ^nk_command_scissor;
  Pnk_command_line = ^nk_command_line;
  Pnk_command_curve = ^nk_command_curve;
  Pnk_command_rect = ^nk_command_rect;
  Pnk_command_rect_filled = ^nk_command_rect_filled;
  Pnk_command_rect_multi_color = ^nk_command_rect_multi_color;
  Pnk_command_triangle = ^nk_command_triangle;
  Pnk_command_triangle_filled = ^nk_command_triangle_filled;
  Pnk_command_circle = ^nk_command_circle;
  Pnk_command_circle_filled = ^nk_command_circle_filled;
  Pnk_command_arc = ^nk_command_arc;
  Pnk_command_arc_filled = ^nk_command_arc_filled;
  Pnk_command_polygon = ^nk_command_polygon;
  Pnk_command_polygon_filled = ^nk_command_polygon_filled;
  Pnk_command_polyline = ^nk_command_polyline;
  Pnk_command_image = ^nk_command_image;
  Pnk_command_custom = ^nk_command_custom;
  Pnk_command_text = ^nk_command_text;
  Pnk_command_buffer = ^nk_command_buffer;
  Pnk_mouse_button = ^nk_mouse_button;
  Pnk_mouse = ^nk_mouse;
  Pnk_key = ^nk_key;
  Pnk_keyboard = ^nk_keyboard;
  Pnk_input = ^nk_input;
  Pnk_draw_vertex_layout_element = ^nk_draw_vertex_layout_element;
  Pnk_draw_command = ^nk_draw_command;
  Pnk_draw_list = ^nk_draw_list;
  Pnk_style_item = ^nk_style_item;
  Pnk_style_text = ^nk_style_text;
  Pnk_style_button = ^nk_style_button;
  Pnk_style_toggle = ^nk_style_toggle;
  Pnk_style_selectable = ^nk_style_selectable;
  Pnk_style_slider = ^nk_style_slider;
  Pnk_style_progress = ^nk_style_progress;
  Pnk_style_scrollbar = ^nk_style_scrollbar;
  Pnk_style_edit = ^nk_style_edit;
  Pnk_style_property = ^nk_style_property;
  Pnk_style_chart = ^nk_style_chart;
  Pnk_style_combo = ^nk_style_combo;
  Pnk_style_tab = ^nk_style_tab;
  Pnk_style_window_header = ^nk_style_window_header;
  Pnk_style_window = ^nk_style_window;
  Pnk_style = ^nk_style;
  Pnk_chart_slot = ^nk_chart_slot;
  Pnk_chart = ^nk_chart;
  Pnk_row_layout = ^nk_row_layout;
  Pnk_popup_buffer = ^nk_popup_buffer;
  Pnk_menu_state = ^nk_menu_state;
  Pnk_panel = ^nk_panel;
  Pnk_popup_state = ^nk_popup_state;
  Pnk_edit_state = ^nk_edit_state;
  Pnk_property_state = ^nk_property_state;
  Pnk_window = ^nk_window;
  Pnk_config_stack_style_item_element = ^nk_config_stack_style_item_element;
  Pnk_config_stack_float_element = ^nk_config_stack_float_element;
  Pnk_config_stack_vec2_element = ^nk_config_stack_vec2_element;
  Pnk_config_stack_flags_element = ^nk_config_stack_flags_element;
  Pnk_config_stack_color_element = ^nk_config_stack_color_element;
  Pnk_config_stack_user_font_element = ^nk_config_stack_user_font_element;
  Pnk_config_stack_button_behavior_element = ^nk_config_stack_button_behavior_element;
  Pnk_config_stack_style_item = ^nk_config_stack_style_item;
  Pnk_config_stack_float = ^nk_config_stack_float;
  Pnk_config_stack_vec2 = ^nk_config_stack_vec2;
  Pnk_config_stack_flags = ^nk_config_stack_flags;
  Pnk_config_stack_color = ^nk_config_stack_color;
  Pnk_config_stack_user_font = ^nk_config_stack_user_font;
  Pnk_config_stack_button_behavior = ^nk_config_stack_button_behavior;
  Pnk_configuration_stacks = ^nk_configuration_stacks;
  Pnk_table = ^nk_table;
  Pnk_page_element = ^nk_page_element;
  Pnk_page = ^nk_page;
  Pnk_pool = ^nk_pool;
  Pnk_context = ^nk_context;
  Pma_allocation_callbacks = ^ma_allocation_callbacks;
  Pma_lcg = ^ma_lcg;
  Pma_log_callback = ^ma_log_callback;
  Pma_log = ^ma_log;
  Pma_biquad_config = ^ma_biquad_config;
  Pma_biquad = ^ma_biquad;
  Pma_lpf1_config = ^ma_lpf1_config;
  Pma_lpf1 = ^ma_lpf1;
  Pma_lpf2 = ^ma_lpf2;
  Pma_lpf_config = ^ma_lpf_config;
  Pma_lpf = ^ma_lpf;
  Pma_hpf1_config = ^ma_hpf1_config;
  Pma_hpf1 = ^ma_hpf1;
  Pma_hpf2 = ^ma_hpf2;
  Pma_hpf_config = ^ma_hpf_config;
  Pma_hpf = ^ma_hpf;
  Pma_bpf2_config = ^ma_bpf2_config;
  Pma_bpf2 = ^ma_bpf2;
  Pma_bpf_config = ^ma_bpf_config;
  Pma_bpf = ^ma_bpf;
  Pma_notch2_config = ^ma_notch2_config;
  Pma_notch2 = ^ma_notch2;
  Pma_peak2_config = ^ma_peak2_config;
  Pma_peak2 = ^ma_peak2;
  Pma_loshelf2_config = ^ma_loshelf2_config;
  Pma_loshelf2 = ^ma_loshelf2;
  Pma_hishelf2_config = ^ma_hishelf2_config;
  Pma_hishelf2 = ^ma_hishelf2;
  Pma_delay_config = ^ma_delay_config;
  Pma_delay = ^ma_delay;
  Pma_gainer_config = ^ma_gainer_config;
  Pma_gainer = ^ma_gainer;
  Pma_panner_config = ^ma_panner_config;
  Pma_panner = ^ma_panner;
  Pma_fader_config = ^ma_fader_config;
  Pma_fader = ^ma_fader;
  Pma_vec3f = ^ma_vec3f;
  Pma_spatializer_listener_config = ^ma_spatializer_listener_config;
  Pma_spatializer_listener = ^ma_spatializer_listener;
  Pma_spatializer_config = ^ma_spatializer_config;
  Pma_spatializer = ^ma_spatializer;
  Pma_linear_resampler_config = ^ma_linear_resampler_config;
  Pma_linear_resampler = ^ma_linear_resampler;
  Pma_resampling_backend_vtable = ^ma_resampling_backend_vtable;
  Pma_resampler_config = ^ma_resampler_config;
  Pma_resampler = ^ma_resampler;
  Pma_channel_converter_config = ^ma_channel_converter_config;
  Pma_channel_converter = ^ma_channel_converter;
  Pma_data_converter_config = ^ma_data_converter_config;
  Pma_data_converter = ^ma_data_converter;
  Pma_rb = ^ma_rb;
  Pma_pcm_rb = ^ma_pcm_rb;
  Pma_duplex_rb = ^ma_duplex_rb;
  Pma_fence = ^ma_fence;
  Pma_async_notification_callbacks = ^ma_async_notification_callbacks;
  Pma_async_notification_poll = ^ma_async_notification_poll;
  Pma_async_notification_event = ^ma_async_notification_event;
  Pma_slot_allocator_config = ^ma_slot_allocator_config;
  Pma_slot_allocator_group = ^ma_slot_allocator_group;
  Pma_slot_allocator = ^ma_slot_allocator;
  Pma_job = ^ma_job;
  Pma_job_queue_config = ^ma_job_queue_config;
  Pma_job_queue = ^ma_job_queue;
  Pma_IMMNotificationClient = ^ma_IMMNotificationClient;
  Pma_device_job_thread_config = ^ma_device_job_thread_config;
  Pma_device_job_thread = ^ma_device_job_thread;
  Pma_device_notification = ^ma_device_notification;
  Pma_device_info = ^ma_device_info;
  PPma_device_info = ^Pma_device_info;
  Pma_device_config = ^ma_device_config;
  Pma_device_descriptor = ^ma_device_descriptor;
  Pma_backend_callbacks = ^ma_backend_callbacks;
  Pma_context_config = ^ma_context_config;
  Pma_context_command__wasapi = ^ma_context_command__wasapi;
  Pma_context = ^ma_context;
  Pma_device = ^ma_device;
  Pma_data_source_vtable = ^ma_data_source_vtable;
  Pma_data_source_config = ^ma_data_source_config;
  Pma_data_source_base = ^ma_data_source_base;
  Pma_audio_buffer_ref = ^ma_audio_buffer_ref;
  Pma_audio_buffer_config = ^ma_audio_buffer_config;
  Pma_audio_buffer = ^ma_audio_buffer;
  PPma_audio_buffer = ^Pma_audio_buffer;
  Pma_paged_audio_buffer_page = ^ma_paged_audio_buffer_page;
  PPma_paged_audio_buffer_page = ^Pma_paged_audio_buffer_page;
  Pma_paged_audio_buffer_data = ^ma_paged_audio_buffer_data;
  Pma_paged_audio_buffer_config = ^ma_paged_audio_buffer_config;
  Pma_paged_audio_buffer = ^ma_paged_audio_buffer;
  Pma_file_info = ^ma_file_info;
  Pma_vfs_callbacks = ^ma_vfs_callbacks;
  Pma_default_vfs = ^ma_default_vfs;
  Pma_decoding_backend_config = ^ma_decoding_backend_config;
  Pma_decoding_backend_vtable = ^ma_decoding_backend_vtable;
  PPma_decoding_backend_vtable = ^Pma_decoding_backend_vtable;
  Pma_decoder_config = ^ma_decoder_config;
  Pma_decoder = ^ma_decoder;
  Pma_encoder_config = ^ma_encoder_config;
  Pma_encoder = ^ma_encoder;
  Pma_waveform_config = ^ma_waveform_config;
  Pma_waveform = ^ma_waveform;
  Pma_noise_config = ^ma_noise_config;
  Pma_noise = ^ma_noise;
  Pma_resource_manager_pipeline_stage_notification = ^ma_resource_manager_pipeline_stage_notification;
  Pma_resource_manager_pipeline_notifications = ^ma_resource_manager_pipeline_notifications;
  Pma_resource_manager_data_source_config = ^ma_resource_manager_data_source_config;
  Pma_resource_manager_data_supply = ^ma_resource_manager_data_supply;
  Pma_resource_manager_data_buffer_node = ^ma_resource_manager_data_buffer_node;
  Pma_resource_manager_data_buffer = ^ma_resource_manager_data_buffer;
  Pma_resource_manager_data_stream = ^ma_resource_manager_data_stream;
  Pma_resource_manager_data_source = ^ma_resource_manager_data_source;
  Pma_resource_manager_config = ^ma_resource_manager_config;
  Pma_resource_manager = ^ma_resource_manager;
  Pma_node_vtable = ^ma_node_vtable;
  Pma_node_config = ^ma_node_config;
  Pma_node_output_bus = ^ma_node_output_bus;
  Pma_node_input_bus = ^ma_node_input_bus;
  Pma_node_base = ^ma_node_base;
  Pma_node_graph_config = ^ma_node_graph_config;
  Pma_node_graph = ^ma_node_graph;
  Pma_data_source_node_config = ^ma_data_source_node_config;
  Pma_data_source_node = ^ma_data_source_node;
  Pma_splitter_node_config = ^ma_splitter_node_config;
  Pma_splitter_node = ^ma_splitter_node;
  Pma_biquad_node_config = ^ma_biquad_node_config;
  Pma_biquad_node = ^ma_biquad_node;
  Pma_lpf_node_config = ^ma_lpf_node_config;
  Pma_lpf_node = ^ma_lpf_node;
  Pma_hpf_node_config = ^ma_hpf_node_config;
  Pma_hpf_node = ^ma_hpf_node;
  Pma_bpf_node_config = ^ma_bpf_node_config;
  Pma_bpf_node = ^ma_bpf_node;
  Pma_notch_node_config = ^ma_notch_node_config;
  Pma_notch_node = ^ma_notch_node;
  Pma_peak_node_config = ^ma_peak_node_config;
  Pma_peak_node = ^ma_peak_node;
  Pma_loshelf_node_config = ^ma_loshelf_node_config;
  Pma_loshelf_node = ^ma_loshelf_node;
  Pma_hishelf_node_config = ^ma_hishelf_node_config;
  Pma_hishelf_node = ^ma_hishelf_node;
  Pma_delay_node_config = ^ma_delay_node_config;
  Pma_delay_node = ^ma_delay_node;
  Pma_engine_node_config = ^ma_engine_node_config;
  Pma_engine_node = ^ma_engine_node;
  Pma_sound_config = ^ma_sound_config;
  Pma_sound = ^ma_sound;
  Pma_sound_inlined = ^ma_sound_inlined;
  Pma_engine_config = ^ma_engine_config;
  Pma_engine = ^ma_engine;
  Ptm_zip_s = ^tm_zip_s;
  Pzip_fileinfo = ^zip_fileinfo;
  P_tmx_prop = ^_tmx_prop;
  P_tmx_img = ^_tmx_img;
  P_tmx_frame = ^_tmx_frame;
  P_tmx_tile = ^_tmx_tile;
  P_tmx_ts = ^_tmx_ts;
  P_tmx_ts_list = ^_tmx_ts_list;
  P_tmx_shape = ^_tmx_shape;
  P_tmx_text = ^_tmx_text;
  P_tmx_obj = ^_tmx_obj;
  P_tmx_objgr = ^_tmx_objgr;
  P_tmx_templ = ^_tmx_templ;
  P_tmx_layer = ^_tmx_layer;
  P_tmx_map = ^_tmx_map;
  Ptmx_col_bytes = ^tmx_col_bytes;
  Ptmx_col_floats = ^tmx_col_floats;
  PNBN_RPC_Signature = ^NBN_RPC_Signature;
  PNBN_ConnectionStats = ^NBN_ConnectionStats;
  PNBN_OutgoingMessage = ^NBN_OutgoingMessage;
  PNBN_MessageInfo = ^NBN_MessageInfo;
  PNBN_ConnectionVector = ^NBN_ConnectionVector;
  PNBN_GameServerStats = ^NBN_GameServerStats;

  SDL_bool = (
    SDL_FALSE = 0,
    SDL_TRUE = 1);
  PSDL_bool = ^SDL_bool;
  Sint8 = Int8;
  Sint16 = Int16;
  PSint16 = ^Sint16;
  Sint32 = Int32;
  Sint64 = Int64;

  SDL_DUMMY_ENUM = (
    DUMMY_ENUM_VALUE = 0);
  PSDL_DUMMY_ENUM = ^SDL_DUMMY_ENUM;

  SDL_malloc_func = function(size: NativeUInt): Pointer; cdecl;
  PSDL_malloc_func = ^SDL_malloc_func;

  SDL_calloc_func = function(nmemb: NativeUInt; size: NativeUInt): Pointer; cdecl;
  PSDL_calloc_func = ^SDL_calloc_func;

  SDL_realloc_func = function(mem: Pointer; size: NativeUInt): Pointer; cdecl;
  PSDL_realloc_func = ^SDL_realloc_func;

  SDL_free_func = procedure(mem: Pointer); cdecl;
  PSDL_free_func = ^SDL_free_func;
  SDL_iconv_t = Pointer;
  PSDL_iconv_t = ^SDL_iconv_t;

  SDL_FunctionPointer = procedure(); cdecl;

  SDL_AssertState = (
    SDL_ASSERTION_RETRY = 0,
    SDL_ASSERTION_BREAK = 1,
    SDL_ASSERTION_ABORT = 2,
    SDL_ASSERTION_IGNORE = 3,
    SDL_ASSERTION_ALWAYS_IGNORE = 4);
  PSDL_AssertState = ^SDL_AssertState;

  SDL_AssertData = record
    always_ignore: Integer;
    trigger_count: Cardinal;
    condition: PUTF8Char;
    filename: PUTF8Char;
    linenum: Integer;
    function_: PUTF8Char;
    next: PSDL_AssertData;
  end;

  SDL_AssertionHandler = function(const data: PSDL_AssertData; userdata: Pointer): SDL_AssertState; cdecl;
  SDL_SpinLock = Integer;
  PSDL_SpinLock = ^SDL_SpinLock;

  SDL_atomic_t = record
    value: Integer;
  end;

  SDL_errorcode = (
    SDL_ENOMEM = 0,
    SDL_EFREAD = 1,
    SDL_EFWRITE = 2,
    SDL_EFSEEK = 3,
    SDL_UNSUPPORTED = 4,
    SDL_LASTERROR = 5);
  PSDL_errorcode = ^SDL_errorcode;
  PSDL_mutex = Pointer;
  PPSDL_mutex = ^PSDL_mutex;
  PSDL_sem = Pointer;
  PPSDL_sem = ^PSDL_sem;
  PSDL_cond = Pointer;
  PPSDL_cond = ^PSDL_cond;
  PSDL_Thread = Pointer;
  PPSDL_Thread = ^PSDL_Thread;
  SDL_threadID_ = Cardinal;
  SDL_TLSID = Cardinal;

  SDL_ThreadPriority = (
    SDL_THREAD_PRIORITY_LOW = 0,
    SDL_THREAD_PRIORITY_NORMAL = 1,
    SDL_THREAD_PRIORITY_HIGH = 2,
    SDL_THREAD_PRIORITY_TIME_CRITICAL = 3);
  PSDL_ThreadPriority = ^SDL_ThreadPriority;

  SDL_ThreadFunction = function(data: Pointer): Integer; cdecl;

  pfnSDL_CurrentBeginThread_func = Pointer;
  pfnSDL_CurrentBeginThread = function(p1: Pointer; p2: Cardinal; func: pfnSDL_CurrentBeginThread_func; p4: Pointer; p5: Cardinal; p6: PCardinal): UIntPtr; cdecl;

  pfnSDL_CurrentEndThread = procedure(code: Cardinal); cdecl;

  P_anonymous_type_1 = ^_anonymous_type_1;
  _anonymous_type_1 = record
    data: Pointer;
    size: NativeUInt;
    left: NativeUInt;
  end;

  P_anonymous_type_2 = ^_anonymous_type_2;
  _anonymous_type_2 = record
    append: SDL_bool;
    h: Pointer;
    buffer: _anonymous_type_1;
  end;

  P_anonymous_type_3 = ^_anonymous_type_3;
  _anonymous_type_3 = record
    autoclose: SDL_bool;
    fp: Pointer;
  end;

  P_anonymous_type_4 = ^_anonymous_type_4;
  _anonymous_type_4 = record
    base: PUint8;
    here: PUint8;
    stop: PUint8;
  end;

  P_anonymous_type_5 = ^_anonymous_type_5;
  _anonymous_type_5 = record
    data1: Pointer;
    data2: Pointer;
  end;

  P_anonymous_type_6 = ^_anonymous_type_6;
  _anonymous_type_6 = record
    case Integer of
      0: (windowsio: _anonymous_type_2);
      1: (stdio: _anonymous_type_3);
      2: (mem: _anonymous_type_4);
      3: (unknown: _anonymous_type_5);
  end;

  SDL_RWops = record
    size: function(context: PSDL_RWops): Sint64; cdecl;
    seek: function(context: PSDL_RWops; offset: Sint64; whence: Integer): Sint64; cdecl;
    read: function(context: PSDL_RWops; ptr: Pointer; size: Sint64): Sint64; cdecl;
    write: function(context: PSDL_RWops; const ptr: Pointer; size: Sint64): Sint64; cdecl;
    close: function(context: PSDL_RWops): Integer; cdecl;
    type_: Uint32;
    hidden: _anonymous_type_6;
  end;

  SDL_AudioFormat = Uint16;

  SDL_AudioCallback = procedure(userdata: Pointer; stream: PUint8; len: Integer); cdecl;

  SDL_AudioSpec = record
    freq: Integer;
    format: SDL_AudioFormat;
    channels: Uint8;
    silence: Uint8;
    samples: Uint16;
    padding: Uint16;
    size: Uint32;
    callback: SDL_AudioCallback;
    userdata: Pointer;
  end;

  SDL_AudioDeviceID = Uint32;

  SDL_AudioStatus = (
    SDL_AUDIO_STOPPED = 0,
    SDL_AUDIO_PLAYING = 1,
    SDL_AUDIO_PAUSED = 2);
  PSDL_AudioStatus = ^SDL_AudioStatus;
  PSDL_AudioStream = Pointer;
  PPSDL_AudioStream = ^PSDL_AudioStream;

  SDL_BlendMode = (
    SDL_BLENDMODE_NONE = 0,
    SDL_BLENDMODE_BLEND = 1,
    SDL_BLENDMODE_ADD = 2,
    SDL_BLENDMODE_MOD = 4,
    SDL_BLENDMODE_MUL = 8,
    SDL_BLENDMODE_INVALID = 2147483647);
  PSDL_BlendMode = ^SDL_BlendMode;

  SDL_BlendOperation = (
    SDL_BLENDOPERATION_ADD = 1,
    SDL_BLENDOPERATION_SUBTRACT = 2,
    SDL_BLENDOPERATION_REV_SUBTRACT = 3,
    SDL_BLENDOPERATION_MINIMUM = 4,
    SDL_BLENDOPERATION_MAXIMUM = 5);
  PSDL_BlendOperation = ^SDL_BlendOperation;

  SDL_BlendFactor = (
    SDL_BLENDFACTOR_ZERO = 1,
    SDL_BLENDFACTOR_ONE = 2,
    SDL_BLENDFACTOR_SRC_COLOR = 3,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4,
    SDL_BLENDFACTOR_SRC_ALPHA = 5,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6,
    SDL_BLENDFACTOR_DST_COLOR = 7,
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 8,
    SDL_BLENDFACTOR_DST_ALPHA = 9,
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10);
  PSDL_BlendFactor = ^SDL_BlendFactor;
  PSDL_Sensor = Pointer;
  PPSDL_Sensor = ^PSDL_Sensor;
  SDL_SensorID = Uint32;
  PSDL_SensorID = ^SDL_SensorID;

  SDL_SensorType = (
    SDL_SENSOR_INVALID = -1,
    SDL_SENSOR_UNKNOWN = 0,
    SDL_SENSOR_ACCEL = 1,
    SDL_SENSOR_GYRO = 2,
    SDL_SENSOR_ACCEL_L = 3,
    SDL_SENSOR_GYRO_L = 4,
    SDL_SENSOR_ACCEL_R = 5,
    SDL_SENSOR_GYRO_R = 6);
  PSDL_SensorType = ^SDL_SensorType;

  SDL_GUID = record
    data: array [0..15] of Uint8;
  end;

  PSDL_Joystick = Pointer;
  PPSDL_Joystick = ^PSDL_Joystick;
  SDL_JoystickGUID = SDL_GUID;
  SDL_JoystickID = Uint32;
  PSDL_JoystickID = ^SDL_JoystickID;

  SDL_JoystickType = (
    SDL_JOYSTICK_TYPE_UNKNOWN = 0,
    SDL_JOYSTICK_TYPE_GAMEPAD = 1,
    SDL_JOYSTICK_TYPE_WHEEL = 2,
    SDL_JOYSTICK_TYPE_ARCADE_STICK = 3,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK = 4,
    SDL_JOYSTICK_TYPE_DANCE_PAD = 5,
    SDL_JOYSTICK_TYPE_GUITAR = 6,
    SDL_JOYSTICK_TYPE_DRUM_KIT = 7,
    SDL_JOYSTICK_TYPE_ARCADE_PAD = 8,
    SDL_JOYSTICK_TYPE_THROTTLE = 9);
  PSDL_JoystickType = ^SDL_JoystickType;

  SDL_JoystickPowerLevel = (
    SDL_JOYSTICK_POWER_UNKNOWN = -1,
    SDL_JOYSTICK_POWER_EMPTY = 0,
    SDL_JOYSTICK_POWER_LOW = 1,
    SDL_JOYSTICK_POWER_MEDIUM = 2,
    SDL_JOYSTICK_POWER_FULL = 3,
    SDL_JOYSTICK_POWER_WIRED = 4,
    SDL_JOYSTICK_POWER_MAX = 5);
  PSDL_JoystickPowerLevel = ^SDL_JoystickPowerLevel;

  SDL_VirtualJoystickDesc = record
    version: Uint16;
    type_: Uint16;
    naxes: Uint16;
    nbuttons: Uint16;
    nhats: Uint16;
    vendor_id: Uint16;
    product_id: Uint16;
    padding: Uint16;
    button_mask: Uint32;
    axis_mask: Uint32;
    name: PUTF8Char;
    userdata: Pointer;
    Update: procedure(userdata: Pointer); cdecl;
    SetPlayerIndex: procedure(userdata: Pointer; player_index: Integer); cdecl;
    Rumble: function(userdata: Pointer; low_frequency_rumble: Uint16; high_frequency_rumble: Uint16): Integer; cdecl;
    RumbleTriggers: function(userdata: Pointer; left_rumble: Uint16; right_rumble: Uint16): Integer; cdecl;
    SetLED: function(userdata: Pointer; red: Uint8; green: Uint8; blue: Uint8): Integer; cdecl;
    SendEffect: function(userdata: Pointer; const data: Pointer; size: Integer): Integer; cdecl;
  end;

  PSDL_Gamepad = Pointer;
  PPSDL_Gamepad = ^PSDL_Gamepad;

  SDL_GamepadType = (
    SDL_GAMEPAD_TYPE_UNKNOWN = 0,
    SDL_GAMEPAD_TYPE_VIRTUAL = 1,
    SDL_GAMEPAD_TYPE_XBOX360 = 2,
    SDL_GAMEPAD_TYPE_XBOXONE = 3,
    SDL_GAMEPAD_TYPE_PS3 = 4,
    SDL_GAMEPAD_TYPE_PS4 = 5,
    SDL_GAMEPAD_TYPE_PS5 = 6,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO = 7,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 8,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 9,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 10,
    SDL_GAMEPAD_TYPE_AMAZON_LUNA = 11,
    SDL_GAMEPAD_TYPE_GOOGLE_STADIA = 12,
    SDL_GAMEPAD_TYPE_NVIDIA_SHIELD = 13);
  PSDL_GamepadType = ^SDL_GamepadType;

  SDL_GamepadButton = (
    SDL_GAMEPAD_BUTTON_INVALID = -1,
    SDL_GAMEPAD_BUTTON_A = 0,
    SDL_GAMEPAD_BUTTON_B = 1,
    SDL_GAMEPAD_BUTTON_X = 2,
    SDL_GAMEPAD_BUTTON_Y = 3,
    SDL_GAMEPAD_BUTTON_BACK = 4,
    SDL_GAMEPAD_BUTTON_GUIDE = 5,
    SDL_GAMEPAD_BUTTON_START = 6,
    SDL_GAMEPAD_BUTTON_LEFT_STICK = 7,
    SDL_GAMEPAD_BUTTON_RIGHT_STICK = 8,
    SDL_GAMEPAD_BUTTON_LEFT_SHOULDER = 9,
    SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER = 10,
    SDL_GAMEPAD_BUTTON_DPAD_UP = 11,
    SDL_GAMEPAD_BUTTON_DPAD_DOWN = 12,
    SDL_GAMEPAD_BUTTON_DPAD_LEFT = 13,
    SDL_GAMEPAD_BUTTON_DPAD_RIGHT = 14,
    SDL_GAMEPAD_BUTTON_MISC1 = 15,
    SDL_GAMEPAD_BUTTON_PADDLE1 = 16,
    SDL_GAMEPAD_BUTTON_PADDLE2 = 17,
    SDL_GAMEPAD_BUTTON_PADDLE3 = 18,
    SDL_GAMEPAD_BUTTON_PADDLE4 = 19,
    SDL_GAMEPAD_BUTTON_TOUCHPAD = 20,
    SDL_GAMEPAD_BUTTON_MAX = 21);
  PSDL_GamepadButton = ^SDL_GamepadButton;

  SDL_GamepadAxis = (
    SDL_GAMEPAD_AXIS_INVALID = -1,
    SDL_GAMEPAD_AXIS_LEFTX = 0,
    SDL_GAMEPAD_AXIS_LEFTY = 1,
    SDL_GAMEPAD_AXIS_RIGHTX = 2,
    SDL_GAMEPAD_AXIS_RIGHTY = 3,
    SDL_GAMEPAD_AXIS_LEFT_TRIGGER = 4,
    SDL_GAMEPAD_AXIS_RIGHT_TRIGGER = 5,
    SDL_GAMEPAD_AXIS_MAX = 6);
  PSDL_GamepadAxis = ^SDL_GamepadAxis;

  SDL_GamepadBindingType = (
    SDL_GAMEPAD_BINDTYPE_NONE = 0,
    SDL_GAMEPAD_BINDTYPE_BUTTON = 1,
    SDL_GAMEPAD_BINDTYPE_AXIS = 2,
    SDL_GAMEPAD_BINDTYPE_HAT = 3);
  PSDL_GamepadBindingType = ^SDL_GamepadBindingType;

  P_anonymous_type_7 = ^_anonymous_type_7;
  _anonymous_type_7 = record
    hat: Integer;
    hat_mask: Integer;
  end;

  P_anonymous_type_8 = ^_anonymous_type_8;
  _anonymous_type_8 = record
    case Integer of
      0: (button: Integer);
      1: (axis: Integer);
      2: (hat: _anonymous_type_7);
  end;

  SDL_GamepadBinding = record
    bindType: SDL_GamepadBindingType;
    value: _anonymous_type_8;
  end;

  SDL_Scancode = (
    SDL_SCANCODE_UNKNOWN = 0,
    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,
    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,
    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,
    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49,
    SDL_SCANCODE_NONUSHASH = 50,
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53,
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,
    SDL_SCANCODE_CAPSLOCK = 57,
    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,
    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73,
    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,
    SDL_SCANCODE_NUMLOCKCLEAR = 83,
    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,
    SDL_SCANCODE_NONUSBACKSLASH = 100,
    SDL_SCANCODE_APPLICATION = 101,
    SDL_SCANCODE_POWER = 102,
    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121,
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,
    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,
    SDL_SCANCODE_INTERNATIONAL1 = 135,
    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137,
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144,
    SDL_SCANCODE_LANG2 = 145,
    SDL_SCANCODE_LANG3 = 146,
    SDL_SCANCODE_LANG4 = 147,
    SDL_SCANCODE_LANG5 = 148,
    SDL_SCANCODE_LANG6 = 149,
    SDL_SCANCODE_LANG7 = 150,
    SDL_SCANCODE_LANG8 = 151,
    SDL_SCANCODE_LANG9 = 152,
    SDL_SCANCODE_ALTERASE = 153,
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,
    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,
    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226,
    SDL_SCANCODE_LGUI = 227,
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230,
    SDL_SCANCODE_RGUI = 231,
    SDL_SCANCODE_MODE = 257,
    SDL_SCANCODE_AUDIONEXT = 258,
    SDL_SCANCODE_AUDIOPREV = 259,
    SDL_SCANCODE_AUDIOSTOP = 260,
    SDL_SCANCODE_AUDIOPLAY = 261,
    SDL_SCANCODE_AUDIOMUTE = 262,
    SDL_SCANCODE_MEDIASELECT = 263,
    SDL_SCANCODE_WWW = 264,
    SDL_SCANCODE_MAIL = 265,
    SDL_SCANCODE_CALCULATOR = 266,
    SDL_SCANCODE_COMPUTER = 267,
    SDL_SCANCODE_AC_SEARCH = 268,
    SDL_SCANCODE_AC_HOME = 269,
    SDL_SCANCODE_AC_BACK = 270,
    SDL_SCANCODE_AC_FORWARD = 271,
    SDL_SCANCODE_AC_STOP = 272,
    SDL_SCANCODE_AC_REFRESH = 273,
    SDL_SCANCODE_AC_BOOKMARKS = 274,
    SDL_SCANCODE_BRIGHTNESSDOWN = 275,
    SDL_SCANCODE_BRIGHTNESSUP = 276,
    SDL_SCANCODE_DISPLAYSWITCH = 277,
    SDL_SCANCODE_KBDILLUMTOGGLE = 278,
    SDL_SCANCODE_KBDILLUMDOWN = 279,
    SDL_SCANCODE_KBDILLUMUP = 280,
    SDL_SCANCODE_EJECT = 281,
    SDL_SCANCODE_SLEEP = 282,
    SDL_SCANCODE_APP1 = 283,
    SDL_SCANCODE_APP2 = 284,
    SDL_SCANCODE_AUDIOREWIND = 285,
    SDL_SCANCODE_AUDIOFASTFORWARD = 286,
    SDL_SCANCODE_SOFTLEFT = 287,
    SDL_SCANCODE_SOFTRIGHT = 288,
    SDL_SCANCODE_CALL = 289,
    SDL_SCANCODE_ENDCALL = 290,
    SDL_NUM_SCANCODES = 512);
  PSDL_Scancode = ^SDL_Scancode;

  SDL_KeyCode = (
    SDLK_UNKNOWN = 0,
    SDLK_RETURN = 13,
    SDLK_ESCAPE = 27,
    SDLK_BACKSPACE = 8,
    SDLK_TAB = 9,
    SDLK_SPACE = 32,
    SDLK_EXCLAIM = 33,
    SDLK_QUOTEDBL = 34,
    SDLK_HASH = 35,
    SDLK_PERCENT = 37,
    SDLK_DOLLAR = 36,
    SDLK_AMPERSAND = 38,
    SDLK_QUOTE = 39,
    SDLK_LEFTPAREN = 40,
    SDLK_RIGHTPAREN = 41,
    SDLK_ASTERISK = 42,
    SDLK_PLUS = 43,
    SDLK_COMMA = 44,
    SDLK_MINUS = 45,
    SDLK_PERIOD = 46,
    SDLK_SLASH = 47,
    SDLK_0 = 48,
    SDLK_1 = 49,
    SDLK_2 = 50,
    SDLK_3 = 51,
    SDLK_4 = 52,
    SDLK_5 = 53,
    SDLK_6 = 54,
    SDLK_7 = 55,
    SDLK_8 = 56,
    SDLK_9 = 57,
    SDLK_COLON = 58,
    SDLK_SEMICOLON = 59,
    SDLK_LESS = 60,
    SDLK_EQUALS = 61,
    SDLK_GREATER = 62,
    SDLK_QUESTION = 63,
    SDLK_AT = 64,
    SDLK_LEFTBRACKET = 91,
    SDLK_BACKSLASH = 92,
    SDLK_RIGHTBRACKET = 93,
    SDLK_CARET = 94,
    SDLK_UNDERSCORE = 95,
    SDLK_BACKQUOTE = 96,
    SDLK_a = 97,
    SDLK_b = 98,
    SDLK_c = 99,
    SDLK_d = 100,
    SDLK_e = 101,
    SDLK_f = 102,
    SDLK_g = 103,
    SDLK_h = 104,
    SDLK_i = 105,
    SDLK_j = 106,
    SDLK_k = 107,
    SDLK_l = 108,
    SDLK_m = 109,
    SDLK_n = 110,
    SDLK_o = 111,
    SDLK_p = 112,
    SDLK_q = 113,
    SDLK_r = 114,
    SDLK_s = 115,
    SDLK_t = 116,
    SDLK_u = 117,
    SDLK_v = 118,
    SDLK_w = 119,
    SDLK_x = 120,
    SDLK_y = 121,
    SDLK_z = 122,
    SDLK_CAPSLOCK = 1073741881,
    SDLK_F1 = 1073741882,
    SDLK_F2 = 1073741883,
    SDLK_F3 = 1073741884,
    SDLK_F4 = 1073741885,
    SDLK_F5 = 1073741886,
    SDLK_F6 = 1073741887,
    SDLK_F7 = 1073741888,
    SDLK_F8 = 1073741889,
    SDLK_F9 = 1073741890,
    SDLK_F10 = 1073741891,
    SDLK_F11 = 1073741892,
    SDLK_F12 = 1073741893,
    SDLK_PRINTSCREEN = 1073741894,
    SDLK_SCROLLLOCK = 1073741895,
    SDLK_PAUSE = 1073741896,
    SDLK_INSERT = 1073741897,
    SDLK_HOME = 1073741898,
    SDLK_PAGEUP = 1073741899,
    SDLK_DELETE = 127,
    SDLK_END = 1073741901,
    SDLK_PAGEDOWN = 1073741902,
    SDLK_RIGHT = 1073741903,
    SDLK_LEFT = 1073741904,
    SDLK_DOWN = 1073741905,
    SDLK_UP = 1073741906,
    SDLK_NUMLOCKCLEAR = 1073741907,
    SDLK_KP_DIVIDE = 1073741908,
    SDLK_KP_MULTIPLY = 1073741909,
    SDLK_KP_MINUS = 1073741910,
    SDLK_KP_PLUS = 1073741911,
    SDLK_KP_ENTER = 1073741912,
    SDLK_KP_1 = 1073741913,
    SDLK_KP_2 = 1073741914,
    SDLK_KP_3 = 1073741915,
    SDLK_KP_4 = 1073741916,
    SDLK_KP_5 = 1073741917,
    SDLK_KP_6 = 1073741918,
    SDLK_KP_7 = 1073741919,
    SDLK_KP_8 = 1073741920,
    SDLK_KP_9 = 1073741921,
    SDLK_KP_0 = 1073741922,
    SDLK_KP_PERIOD = 1073741923,
    SDLK_APPLICATION = 1073741925,
    SDLK_POWER = 1073741926,
    SDLK_KP_EQUALS = 1073741927,
    SDLK_F13 = 1073741928,
    SDLK_F14 = 1073741929,
    SDLK_F15 = 1073741930,
    SDLK_F16 = 1073741931,
    SDLK_F17 = 1073741932,
    SDLK_F18 = 1073741933,
    SDLK_F19 = 1073741934,
    SDLK_F20 = 1073741935,
    SDLK_F21 = 1073741936,
    SDLK_F22 = 1073741937,
    SDLK_F23 = 1073741938,
    SDLK_F24 = 1073741939,
    SDLK_EXECUTE = 1073741940,
    SDLK_HELP = 1073741941,
    SDLK_MENU = 1073741942,
    SDLK_SELECT = 1073741943,
    SDLK_STOP = 1073741944,
    SDLK_AGAIN = 1073741945,
    SDLK_UNDO = 1073741946,
    SDLK_CUT = 1073741947,
    SDLK_COPY = 1073741948,
    SDLK_PASTE = 1073741949,
    SDLK_FIND = 1073741950,
    SDLK_MUTE = 1073741951,
    SDLK_VOLUMEUP = 1073741952,
    SDLK_VOLUMEDOWN = 1073741953,
    SDLK_KP_COMMA = 1073741957,
    SDLK_KP_EQUALSAS400 = 1073741958,
    SDLK_ALTERASE = 1073741977,
    SDLK_SYSREQ = 1073741978,
    SDLK_CANCEL = 1073741979,
    SDLK_CLEAR = 1073741980,
    SDLK_PRIOR = 1073741981,
    SDLK_RETURN2 = 1073741982,
    SDLK_SEPARATOR = 1073741983,
    SDLK_OUT = 1073741984,
    SDLK_OPER = 1073741985,
    SDLK_CLEARAGAIN = 1073741986,
    SDLK_CRSEL = 1073741987,
    SDLK_EXSEL = 1073741988,
    SDLK_KP_00 = 1073742000,
    SDLK_KP_000 = 1073742001,
    SDLK_THOUSANDSSEPARATOR = 1073742002,
    SDLK_DECIMALSEPARATOR = 1073742003,
    SDLK_CURRENCYUNIT = 1073742004,
    SDLK_CURRENCYSUBUNIT = 1073742005,
    SDLK_KP_LEFTPAREN = 1073742006,
    SDLK_KP_RIGHTPAREN = 1073742007,
    SDLK_KP_LEFTBRACE = 1073742008,
    SDLK_KP_RIGHTBRACE = 1073742009,
    SDLK_KP_TAB = 1073742010,
    SDLK_KP_BACKSPACE = 1073742011,
    SDLK_KP_A = 1073742012,
    SDLK_KP_B = 1073742013,
    SDLK_KP_C = 1073742014,
    SDLK_KP_D = 1073742015,
    SDLK_KP_E = 1073742016,
    SDLK_KP_F = 1073742017,
    SDLK_KP_XOR = 1073742018,
    SDLK_KP_POWER = 1073742019,
    SDLK_KP_PERCENT = 1073742020,
    SDLK_KP_LESS = 1073742021,
    SDLK_KP_GREATER = 1073742022,
    SDLK_KP_AMPERSAND = 1073742023,
    SDLK_KP_DBLAMPERSAND = 1073742024,
    SDLK_KP_VERTICALBAR = 1073742025,
    SDLK_KP_DBLVERTICALBAR = 1073742026,
    SDLK_KP_COLON = 1073742027,
    SDLK_KP_HASH = 1073742028,
    SDLK_KP_SPACE = 1073742029,
    SDLK_KP_AT = 1073742030,
    SDLK_KP_EXCLAM = 1073742031,
    SDLK_KP_MEMSTORE = 1073742032,
    SDLK_KP_MEMRECALL = 1073742033,
    SDLK_KP_MEMCLEAR = 1073742034,
    SDLK_KP_MEMADD = 1073742035,
    SDLK_KP_MEMSUBTRACT = 1073742036,
    SDLK_KP_MEMMULTIPLY = 1073742037,
    SDLK_KP_MEMDIVIDE = 1073742038,
    SDLK_KP_PLUSMINUS = 1073742039,
    SDLK_KP_CLEAR = 1073742040,
    SDLK_KP_CLEARENTRY = 1073742041,
    SDLK_KP_BINARY = 1073742042,
    SDLK_KP_OCTAL = 1073742043,
    SDLK_KP_DECIMAL = 1073742044,
    SDLK_KP_HEXADECIMAL = 1073742045,
    SDLK_LCTRL = 1073742048,
    SDLK_LSHIFT = 1073742049,
    SDLK_LALT = 1073742050,
    SDLK_LGUI = 1073742051,
    SDLK_RCTRL = 1073742052,
    SDLK_RSHIFT = 1073742053,
    SDLK_RALT = 1073742054,
    SDLK_RGUI = 1073742055,
    SDLK_MODE = 1073742081,
    SDLK_AUDIONEXT = 1073742082,
    SDLK_AUDIOPREV = 1073742083,
    SDLK_AUDIOSTOP = 1073742084,
    SDLK_AUDIOPLAY = 1073742085,
    SDLK_AUDIOMUTE = 1073742086,
    SDLK_MEDIASELECT = 1073742087,
    SDLK_WWW = 1073742088,
    SDLK_MAIL = 1073742089,
    SDLK_CALCULATOR = 1073742090,
    SDLK_COMPUTER = 1073742091,
    SDLK_AC_SEARCH = 1073742092,
    SDLK_AC_HOME = 1073742093,
    SDLK_AC_BACK = 1073742094,
    SDLK_AC_FORWARD = 1073742095,
    SDLK_AC_STOP = 1073742096,
    SDLK_AC_REFRESH = 1073742097,
    SDLK_AC_BOOKMARKS = 1073742098,
    SDLK_BRIGHTNESSDOWN = 1073742099,
    SDLK_BRIGHTNESSUP = 1073742100,
    SDLK_DISPLAYSWITCH = 1073742101,
    SDLK_KBDILLUMTOGGLE = 1073742102,
    SDLK_KBDILLUMDOWN = 1073742103,
    SDLK_KBDILLUMUP = 1073742104,
    SDLK_EJECT = 1073742105,
    SDLK_SLEEP = 1073742106,
    SDLK_APP1 = 1073742107,
    SDLK_APP2 = 1073742108,
    SDLK_AUDIOREWIND = 1073742109,
    SDLK_AUDIOFASTFORWARD = 1073742110,
    SDLK_SOFTLEFT = 1073742111,
    SDLK_SOFTRIGHT = 1073742112,
    SDLK_CALL = 1073742113,
    SDLK_ENDCALL = 1073742114);
  PSDL_KeyCode = ^SDL_KeyCode;

  SDL_Keymod = (
    SDL_KMOD_NONE = 0,
    SDL_KMOD_LSHIFT = 1,
    SDL_KMOD_RSHIFT = 2,
    SDL_KMOD_LCTRL = 64,
    SDL_KMOD_RCTRL = 128,
    SDL_KMOD_LALT = 256,
    SDL_KMOD_RALT = 512,
    SDL_KMOD_LGUI = 1024,
    SDL_KMOD_RGUI = 2048,
    SDL_KMOD_NUM = 4096,
    SDL_KMOD_CAPS = 8192,
    SDL_KMOD_MODE = 16384,
    SDL_KMOD_SCROLL = 32768,
    SDL_KMOD_CTRL = 192,
    SDL_KMOD_SHIFT = 3,
    SDL_KMOD_ALT = 768,
    SDL_KMOD_GUI = 3072,
    SDL_KMOD_RESERVED = 32768);
  PSDL_Keymod = ^SDL_Keymod;

  SDL_PixelType = (
    SDL_PIXELTYPE_UNKNOWN = 0,
    SDL_PIXELTYPE_INDEX1 = 1,
    SDL_PIXELTYPE_INDEX4 = 2,
    SDL_PIXELTYPE_INDEX8 = 3,
    SDL_PIXELTYPE_PACKED8 = 4,
    SDL_PIXELTYPE_PACKED16 = 5,
    SDL_PIXELTYPE_PACKED32 = 6,
    SDL_PIXELTYPE_ARRAYU8 = 7,
    SDL_PIXELTYPE_ARRAYU16 = 8,
    SDL_PIXELTYPE_ARRAYU32 = 9,
    SDL_PIXELTYPE_ARRAYF16 = 10,
    SDL_PIXELTYPE_ARRAYF32 = 11);
  PSDL_PixelType = ^SDL_PixelType;

  SDL_BitmapOrder = (
    SDL_BITMAPORDER_NONE = 0,
    SDL_BITMAPORDER_4321 = 1,
    SDL_BITMAPORDER_1234 = 2);
  PSDL_BitmapOrder = ^SDL_BitmapOrder;

  SDL_PackedOrder = (
    SDL_PACKEDORDER_NONE = 0,
    SDL_PACKEDORDER_XRGB = 1,
    SDL_PACKEDORDER_RGBX = 2,
    SDL_PACKEDORDER_ARGB = 3,
    SDL_PACKEDORDER_RGBA = 4,
    SDL_PACKEDORDER_XBGR = 5,
    SDL_PACKEDORDER_BGRX = 6,
    SDL_PACKEDORDER_ABGR = 7,
    SDL_PACKEDORDER_BGRA = 8);
  PSDL_PackedOrder = ^SDL_PackedOrder;

  SDL_ArrayOrder = (
    SDL_ARRAYORDER_NONE = 0,
    SDL_ARRAYORDER_RGB = 1,
    SDL_ARRAYORDER_BGR = 2);
  PSDL_ArrayOrder = ^SDL_ArrayOrder;

  SDL_PackedLayout = (
    SDL_PACKEDLAYOUT_NONE = 0,
    SDL_PACKEDLAYOUT_332 = 1,
    SDL_PACKEDLAYOUT_4444 = 2,
    SDL_PACKEDLAYOUT_1555 = 3,
    SDL_PACKEDLAYOUT_5551 = 4,
    SDL_PACKEDLAYOUT_565 = 5,
    SDL_PACKEDLAYOUT_8888 = 6,
    SDL_PACKEDLAYOUT_2101010 = 7,
    SDL_PACKEDLAYOUT_1010102 = 8);
  PSDL_PackedLayout = ^SDL_PackedLayout;

  SDL_PixelFormatEnum = (
    SDL_PIXELFORMAT_UNKNOWN = 0,
    SDL_PIXELFORMAT_INDEX1LSB = 286261504,
    SDL_PIXELFORMAT_INDEX1MSB = 287310080,
    SDL_PIXELFORMAT_INDEX4LSB = 303039488,
    SDL_PIXELFORMAT_INDEX4MSB = 304088064,
    SDL_PIXELFORMAT_INDEX8 = 318769153,
    SDL_PIXELFORMAT_RGB332 = 336660481,
    SDL_PIXELFORMAT_XRGB4444 = 353504258,
    SDL_PIXELFORMAT_RGB444 = 353504258,
    SDL_PIXELFORMAT_XBGR4444 = 357698562,
    SDL_PIXELFORMAT_BGR444 = 357698562,
    SDL_PIXELFORMAT_XRGB1555 = 353570562,
    SDL_PIXELFORMAT_RGB555 = 353570562,
    SDL_PIXELFORMAT_XBGR1555 = 357764866,
    SDL_PIXELFORMAT_BGR555 = 357764866,
    SDL_PIXELFORMAT_ARGB4444 = 355602434,
    SDL_PIXELFORMAT_RGBA4444 = 356651010,
    SDL_PIXELFORMAT_ABGR4444 = 359796738,
    SDL_PIXELFORMAT_BGRA4444 = 360845314,
    SDL_PIXELFORMAT_ARGB1555 = 355667970,
    SDL_PIXELFORMAT_RGBA5551 = 356782082,
    SDL_PIXELFORMAT_ABGR1555 = 359862274,
    SDL_PIXELFORMAT_BGRA5551 = 360976386,
    SDL_PIXELFORMAT_RGB565 = 353701890,
    SDL_PIXELFORMAT_BGR565 = 357896194,
    SDL_PIXELFORMAT_RGB24 = 386930691,
    SDL_PIXELFORMAT_BGR24 = 387979267,
    SDL_PIXELFORMAT_XRGB8888 = 370546692,
    SDL_PIXELFORMAT_RGB888 = 370546692,
    SDL_PIXELFORMAT_RGBX8888 = 371595268,
    SDL_PIXELFORMAT_XBGR8888 = 374740996,
    SDL_PIXELFORMAT_BGR888 = 374740996,
    SDL_PIXELFORMAT_BGRX8888 = 375789572,
    SDL_PIXELFORMAT_ARGB8888 = 372645892,
    SDL_PIXELFORMAT_RGBA8888 = 373694468,
    SDL_PIXELFORMAT_ABGR8888 = 376840196,
    SDL_PIXELFORMAT_BGRA8888 = 377888772,
    SDL_PIXELFORMAT_ARGB2101010 = 372711428,
    SDL_PIXELFORMAT_RGBA32 = 376840196,
    SDL_PIXELFORMAT_ARGB32 = 377888772,
    SDL_PIXELFORMAT_BGRA32 = 372645892,
    SDL_PIXELFORMAT_ABGR32 = 373694468,
    SDL_PIXELFORMAT_YV12 = 842094169,
    SDL_PIXELFORMAT_IYUV = 1448433993,
    SDL_PIXELFORMAT_YUY2 = 844715353,
    SDL_PIXELFORMAT_UYVY = 1498831189,
    SDL_PIXELFORMAT_YVYU = 1431918169,
    SDL_PIXELFORMAT_NV12 = 842094158,
    SDL_PIXELFORMAT_NV21 = 825382478,
    SDL_PIXELFORMAT_EXTERNAL_OES = 542328143);
  PSDL_PixelFormatEnum = ^SDL_PixelFormatEnum;

  SDL_Color = record
    r: Uint8;
    g: Uint8;
    b: Uint8;
    a: Uint8;
  end;

  SDL_Palette = record
    ncolors: Integer;
    colors: PSDL_Color;
    version: Uint32;
    refcount: Integer;
  end;

  SDL_PixelFormat = record
    format: Uint32;
    palette: PSDL_Palette;
    BitsPerPixel: Uint8;
    BytesPerPixel: Uint8;
    padding: array [0..1] of Uint8;
    Rmask: Uint32;
    Gmask: Uint32;
    Bmask: Uint32;
    Amask: Uint32;
    Rloss: Uint8;
    Gloss: Uint8;
    Bloss: Uint8;
    Aloss: Uint8;
    Rshift: Uint8;
    Gshift: Uint8;
    Bshift: Uint8;
    Ashift: Uint8;
    refcount: Integer;
    next: PSDL_PixelFormat;
  end;

  SDL_Point = record
    x: Integer;
    y: Integer;
  end;

  SDL_FPoint = record
    x: Single;
    y: Single;
  end;

  SDL_Rect = record
    x: Integer;
    y: Integer;
    w: Integer;
    h: Integer;
  end;

  SDL_FRect = record
    x: Single;
    y: Single;
    w: Single;
    h: Single;
  end;

  PSDL_BlitMap = Pointer;
  PPSDL_BlitMap = ^PSDL_BlitMap;

  SDL_Surface = record
    flags: Uint32;
    format: PSDL_PixelFormat;
    w: Integer;
    h: Integer;
    pitch: Integer;
    pixels: Pointer;
    userdata: Pointer;
    locked: Integer;
    list_blitmap: Pointer;
    clip_rect: SDL_Rect;
    map: PSDL_BlitMap;
    refcount: Integer;
  end;

  SDL_blit = function(src: PSDL_Surface; srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): Integer; cdecl;

  SDL_YUV_CONVERSION_MODE = (
    SDL_YUV_CONVERSION_JPEG = 0,
    SDL_YUV_CONVERSION_BT601 = 1,
    SDL_YUV_CONVERSION_BT709 = 2,
    SDL_YUV_CONVERSION_AUTOMATIC = 3);
  PSDL_YUV_CONVERSION_MODE = ^SDL_YUV_CONVERSION_MODE;
  SDL_WindowID = Uint32;

  SDL_DisplayMode = record
    format: Uint32;
    pixel_w: Integer;
    pixel_h: Integer;
    screen_w: Integer;
    screen_h: Integer;
    display_scale: Single;
    refresh_rate: Single;
    driverdata: Pointer;
  end;

  PSDL_Window = Pointer;
  PPSDL_Window = ^PSDL_Window;

  SDL_WindowFlags = (
    SDL_WINDOW_FULLSCREEN_EXCLUSIVE = 1,
    SDL_WINDOW_OPENGL = 2,
    SDL_WINDOW_HIDDEN = 8,
    SDL_WINDOW_BORDERLESS = 16,
    SDL_WINDOW_RESIZABLE = 32,
    SDL_WINDOW_MINIMIZED = 64,
    SDL_WINDOW_MAXIMIZED = 128,
    SDL_WINDOW_MOUSE_GRABBED = 256,
    SDL_WINDOW_INPUT_FOCUS = 512,
    SDL_WINDOW_MOUSE_FOCUS = 1024,
    SDL_WINDOW_FULLSCREEN_DESKTOP = 4096,
    SDL_WINDOW_FOREIGN = 2048,
    SDL_WINDOW_MOUSE_CAPTURE = 16384,
    SDL_WINDOW_ALWAYS_ON_TOP = 32768,
    SDL_WINDOW_SKIP_TASKBAR = 65536,
    SDL_WINDOW_UTILITY = 131072,
    SDL_WINDOW_TOOLTIP = 262144,
    SDL_WINDOW_POPUP_MENU = 524288,
    SDL_WINDOW_KEYBOARD_GRABBED = 1048576,
    SDL_WINDOW_VULKAN = 268435456,
    SDL_WINDOW_METAL = 536870912);
  PSDL_WindowFlags = ^SDL_WindowFlags;

  SDL_DisplayOrientation = (
    SDL_ORIENTATION_UNKNOWN = 0,
    SDL_ORIENTATION_LANDSCAPE = 1,
    SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2,
    SDL_ORIENTATION_PORTRAIT = 3,
    SDL_ORIENTATION_PORTRAIT_FLIPPED = 4);
  PSDL_DisplayOrientation = ^SDL_DisplayOrientation;

  SDL_FlashOperation = (
    SDL_FLASH_CANCEL = 0,
    SDL_FLASH_BRIEFLY = 1,
    SDL_FLASH_UNTIL_FOCUSED = 2);
  PSDL_FlashOperation = ^SDL_FlashOperation;
  SDL_GLContext = Pointer;
  SDL_EGLDisplay = Pointer;
  SDL_EGLConfig = Pointer;
  SDL_EGLSurface = Pointer;
  SDL_EGLAttrib = IntPtr;
  PSDL_EGLAttrib = ^SDL_EGLAttrib;
  PSDL_EGLint = ^SDL_EGLint;
  SDL_EGLint = Integer;

  SDL_EGLAttribArrayCallback = function(): PSDL_EGLAttrib; cdecl;

  SDL_EGLIntArrayCallback = function(): PSDL_EGLint; cdecl;

  SDL_GLattr = (
    SDL_GL_RED_SIZE = 0,
    SDL_GL_GREEN_SIZE = 1,
    SDL_GL_BLUE_SIZE = 2,
    SDL_GL_ALPHA_SIZE = 3,
    SDL_GL_BUFFER_SIZE = 4,
    SDL_GL_DOUBLEBUFFER = 5,
    SDL_GL_DEPTH_SIZE = 6,
    SDL_GL_STENCIL_SIZE = 7,
    SDL_GL_ACCUM_RED_SIZE = 8,
    SDL_GL_ACCUM_GREEN_SIZE = 9,
    SDL_GL_ACCUM_BLUE_SIZE = 10,
    SDL_GL_ACCUM_ALPHA_SIZE = 11,
    SDL_GL_STEREO = 12,
    SDL_GL_MULTISAMPLEBUFFERS = 13,
    SDL_GL_MULTISAMPLESAMPLES = 14,
    SDL_GL_ACCELERATED_VISUAL = 15,
    SDL_GL_RETAINED_BACKING = 16,
    SDL_GL_CONTEXT_MAJOR_VERSION = 17,
    SDL_GL_CONTEXT_MINOR_VERSION = 18,
    SDL_GL_CONTEXT_FLAGS = 19,
    SDL_GL_CONTEXT_PROFILE_MASK = 20,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 21,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE = 22,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR = 23,
    SDL_GL_CONTEXT_RESET_NOTIFICATION = 24,
    SDL_GL_CONTEXT_NO_ERROR = 25,
    SDL_GL_FLOATBUFFERS = 26,
    SDL_GL_EGL_PLATFORM = 27);
  PSDL_GLattr = ^SDL_GLattr;

  SDL_GLprofile = (
    SDL_GL_CONTEXT_PROFILE_CORE = 1,
    SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2,
    SDL_GL_CONTEXT_PROFILE_ES = 4);
  PSDL_GLprofile = ^SDL_GLprofile;

  SDL_GLcontextFlag = (
    SDL_GL_CONTEXT_DEBUG_FLAG = 1,
    SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2,
    SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4,
    SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8);
  PSDL_GLcontextFlag = ^SDL_GLcontextFlag;

  SDL_GLcontextReleaseFlag = (
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1);
  PSDL_GLcontextReleaseFlag = ^SDL_GLcontextReleaseFlag;

  SDL_GLContextResetNotification = (
    SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0,
    SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1);
  PSDL_GLContextResetNotification = ^SDL_GLContextResetNotification;

  SDL_HitTestResult = (
    SDL_HITTEST_NORMAL = 0,
    SDL_HITTEST_DRAGGABLE = 1,
    SDL_HITTEST_RESIZE_TOPLEFT = 2,
    SDL_HITTEST_RESIZE_TOP = 3,
    SDL_HITTEST_RESIZE_TOPRIGHT = 4,
    SDL_HITTEST_RESIZE_RIGHT = 5,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6,
    SDL_HITTEST_RESIZE_BOTTOM = 7,
    SDL_HITTEST_RESIZE_BOTTOMLEFT = 8,
    SDL_HITTEST_RESIZE_LEFT = 9);
  PSDL_HitTestResult = ^SDL_HitTestResult;

  SDL_HitTest = function(win: PSDL_Window; const area: PSDL_Point; data: Pointer): SDL_HitTestResult; cdecl;

  SDL_Keysym = record
    scancode: SDL_Scancode;
    sym: SDL_Keycode;
    mod_: Uint16;
    unused: Uint32;
  end;

  SDL_MouseID = Uint32;
  PSDL_Cursor = Pointer;
  PPSDL_Cursor = ^PSDL_Cursor;

  SDL_SystemCursor = (
    SDL_SYSTEM_CURSOR_ARROW = 0,
    SDL_SYSTEM_CURSOR_IBEAM = 1,
    SDL_SYSTEM_CURSOR_WAIT = 2,
    SDL_SYSTEM_CURSOR_CROSSHAIR = 3,
    SDL_SYSTEM_CURSOR_WAITARROW = 4,
    SDL_SYSTEM_CURSOR_SIZENWSE = 5,
    SDL_SYSTEM_CURSOR_SIZENESW = 6,
    SDL_SYSTEM_CURSOR_SIZEWE = 7,
    SDL_SYSTEM_CURSOR_SIZENS = 8,
    SDL_SYSTEM_CURSOR_SIZEALL = 9,
    SDL_SYSTEM_CURSOR_NO = 10,
    SDL_SYSTEM_CURSOR_HAND = 11,
    SDL_NUM_SYSTEM_CURSORS = 12);
  PSDL_SystemCursor = ^SDL_SystemCursor;

  SDL_MouseWheelDirection = (
    SDL_MOUSEWHEEL_NORMAL = 0,
    SDL_MOUSEWHEEL_FLIPPED = 1);
  PSDL_MouseWheelDirection = ^SDL_MouseWheelDirection;
  SDL_TouchID = Sint64;
  SDL_FingerID = Sint64;

  SDL_TouchDeviceType = (
    SDL_TOUCH_DEVICE_INVALID = -1,
    SDL_TOUCH_DEVICE_DIRECT = 0,
    SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1,
    SDL_TOUCH_DEVICE_INDIRECT_RELATIVE = 2);
  PSDL_TouchDeviceType = ^SDL_TouchDeviceType;

  SDL_Finger = record
    id: SDL_FingerID;
    x: Single;
    y: Single;
    pressure: Single;
  end;

  SDL_EventType = (
    SDL_EVENT_FIRST = 0,
    SDL_EVENT_QUIT = 256,
    SDL_EVENT_TERMINATING = 257,
    SDL_EVENT_LOW_MEMORY = 258,
    SDL_EVENT_WILL_ENTER_BACKGROUND = 259,
    SDL_EVENT_DID_ENTER_BACKGROUND = 260,
    SDL_EVENT_WILL_ENTER_FOREGROUND = 261,
    SDL_EVENT_DID_ENTER_FOREGROUND = 262,
    SDL_EVENT_LOCALE_CHANGED = 263,
    SDL_EVENT_DISPLAY_ORIENTATION = 337,
    SDL_EVENT_DISPLAY_CONNECTED = 338,
    SDL_EVENT_DISPLAY_DISCONNECTED = 339,
    SDL_EVENT_DISPLAY_MOVED = 340,
    SDL_EVENT_DISPLAY_FIRST = 337,
    SDL_EVENT_DISPLAY_LAST = 339,
    SDL_EVENT_SYSWM = 513,
    SDL_EVENT_WINDOW_SHOWN = 514,
    SDL_EVENT_WINDOW_HIDDEN = 515,
    SDL_EVENT_WINDOW_EXPOSED = 516,
    SDL_EVENT_WINDOW_MOVED = 517,
    SDL_EVENT_WINDOW_RESIZED = 518,
    SDL_EVENT_WINDOW_MINIMIZED = 520,
    SDL_EVENT_WINDOW_MAXIMIZED = 521,
    SDL_EVENT_WINDOW_RESTORED = 522,
    SDL_EVENT_WINDOW_MOUSE_ENTER = 523,
    SDL_EVENT_WINDOW_MOUSE_LEAVE = 524,
    SDL_EVENT_WINDOW_FOCUS_GAINED = 525,
    SDL_EVENT_WINDOW_FOCUS_LOST = 526,
    SDL_EVENT_WINDOW_CLOSE_REQUESTED = 527,
    SDL_EVENT_WINDOW_TAKE_FOCUS = 528,
    SDL_EVENT_WINDOW_HIT_TEST = 529,
    SDL_EVENT_WINDOW_ICCPROF_CHANGED = 530,
    SDL_EVENT_WINDOW_DISPLAY_CHANGED = 531,
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED = 532,
    SDL_EVENT_WINDOW_FIRST = 514,
    SDL_EVENT_WINDOW_LAST = 532,
    SDL_EVENT_KEY_DOWN = 768,
    SDL_EVENT_KEY_UP = 769,
    SDL_EVENT_TEXT_EDITING = 770,
    SDL_EVENT_TEXT_INPUT = 771,
    SDL_EVENT_KEYMAP_CHANGED = 772,
    SDL_EVENT_TEXTEDITING_EXT = 773,
    SDL_EVENT_MOUSE_MOTION = 1024,
    SDL_EVENT_MOUSE_BUTTONDOWN = 1025,
    SDL_EVENT_MOUSE_BUTTONUP = 1026,
    SDL_EVENT_MOUSE_WHEEL = 1027,
    SDL_EVENT_JOYSTICK_AXIS_MOTION = 1536,
    SDL_EVENT_JOYSTICK_HAT_MOTION = 1538,
    SDL_EVENT_JOYSTICK_BUTTON_DOWN = 1539,
    SDL_EVENT_JOYSTICK_BUTTON_UP = 1540,
    SDL_EVENT_JOYSTICK_ADDED = 1541,
    SDL_EVENT_JOYSTICK_REMOVED = 1542,
    SDL_EVENT_JOYSTICK_BATTERY_UPDATED = 1543,
    SDL_EVENT_GAMEPAD_AXIS_MOTION = 1616,
    SDL_EVENT_GAMEPAD_BUTTON_DOWN = 1617,
    SDL_EVENT_GAMEPAD_BUTTON_UP = 1618,
    SDL_EVENT_GAMEPAD_ADDED = 1619,
    SDL_EVENT_GAMEPAD_REMOVED = 1620,
    SDL_EVENT_GAMEPAD_REMAPPED = 1621,
    SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN = 1622,
    SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION = 1623,
    SDL_EVENT_GAMEPAD_TOUCHPAD_UP = 1624,
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE = 1625,
    SDL_EVENT_FINGER_DOWN = 1792,
    SDL_EVENT_FINGER_UP = 1793,
    SDL_EVENT_FINGER_MOTION = 1794,
    SDL_EVENT_CLIPBOARD_UPDATE = 2304,
    SDL_EVENT_DROP_FILE = 4096,
    SDL_EVENT_DROP_TEXT = 4097,
    SDL_EVENT_DROP_BEGIN = 4098,
    SDL_EVENT_DROP_COMPLETE = 4099,
    SDL_EVENT_AUDIO_DEVICE_ADDED = 4352,
    SDL_EVENT_AUDIO_DEVICE_REMOVED = 4353,
    SDL_EVENT_SENSOR_UPDATE = 4608,
    SDL_EVENT_RENDER_TARGETS_RESET = 8192,
    SDL_EVENT_RENDER_DEVICE_RESET = 8193,
    SDL_EVENT_POLL_SENTINEL = 32512,
    SDL_EVENT_USER = 32768,
    SDL_EVENT_LAST = 65535);
  PSDL_EventType = ^SDL_EventType;

  SDL_CommonEvent = record
    type_: Uint32;
    timestamp: Uint64;
  end;

  SDL_DisplayEvent = record
    type_: Uint32;
    timestamp: Uint64;
    display: Uint32;
    data1: Sint32;
  end;

  SDL_WindowEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    data1: Sint32;
    data2: Sint32;
  end;

  SDL_KeyboardEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    state: Uint8;
    repeat_: Uint8;
    padding2: Uint8;
    padding3: Uint8;
    keysym: SDL_Keysym;
  end;

  SDL_TextEditingEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    text: array [0..31] of UTF8Char;
    start: Sint32;
    length: Sint32;
  end;

  SDL_TextEditingExtEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    text: PUTF8Char;
    start: Sint32;
    length: Sint32;
  end;

  SDL_TextInputEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    text: array [0..31] of UTF8Char;
  end;

  SDL_MouseMotionEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    which: SDL_MouseID;
    state: Uint32;
    x: Single;
    y: Single;
    xrel: Single;
    yrel: Single;
  end;

  SDL_MouseButtonEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    which: SDL_MouseID;
    button: Uint8;
    state: Uint8;
    clicks: Uint8;
    padding: Uint8;
    x: Single;
    y: Single;
  end;

  SDL_MouseWheelEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    which: SDL_MouseID;
    x: Single;
    y: Single;
    direction: Uint32;
    mouseX: Single;
    mouseY: Single;
  end;

  SDL_JoyAxisEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    axis: Uint8;
    padding1: Uint8;
    padding2: Uint8;
    padding3: Uint8;
    value: Sint16;
    padding4: Uint16;
  end;

  SDL_JoyHatEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    hat: Uint8;
    value: Uint8;
    padding1: Uint8;
    padding2: Uint8;
  end;

  SDL_JoyButtonEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    button: Uint8;
    state: Uint8;
    padding1: Uint8;
    padding2: Uint8;
  end;

  SDL_JoyDeviceEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
  end;

  SDL_JoyBatteryEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    level: SDL_JoystickPowerLevel;
  end;

  SDL_GamepadAxisEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    axis: Uint8;
    padding1: Uint8;
    padding2: Uint8;
    padding3: Uint8;
    value: Sint16;
    padding4: Uint16;
  end;

  SDL_GamepadButtonEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    button: Uint8;
    state: Uint8;
    padding1: Uint8;
    padding2: Uint8;
  end;

  SDL_GamepadDeviceEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
  end;

  SDL_GamepadTouchpadEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    touchpad: Sint32;
    finger: Sint32;
    x: Single;
    y: Single;
    pressure: Single;
  end;

  SDL_GamepadSensorEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_JoystickID;
    sensor: Sint32;
    data: array [0..2] of Single;
    sensor_timestamp: Uint64;
  end;

  SDL_AudioDeviceEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_AudioDeviceID;
    iscapture: Uint8;
    padding1: Uint8;
    padding2: Uint8;
    padding3: Uint8;
  end;

  SDL_TouchFingerEvent = record
    type_: Uint32;
    timestamp: Uint64;
    touchId: SDL_TouchID;
    fingerId: SDL_FingerID;
    x: Single;
    y: Single;
    dx: Single;
    dy: Single;
    pressure: Single;
    windowID: SDL_WindowID;
  end;

  SDL_DropEvent = record
    type_: Uint32;
    timestamp: Uint64;
    file_: PUTF8Char;
    windowID: SDL_WindowID;
  end;

  SDL_SensorEvent = record
    type_: Uint32;
    timestamp: Uint64;
    which: SDL_SensorID;
    data: array [0..5] of Single;
    sensor_timestamp: Uint64;
  end;

  SDL_QuitEvent = record
    type_: Uint32;
    timestamp: Uint64;
  end;

  SDL_OSEvent = record
    type_: Uint32;
    timestamp: Uint64;
  end;

  SDL_UserEvent = record
    type_: Uint32;
    timestamp: Uint64;
    windowID: SDL_WindowID;
    code: Sint32;
    data1: Pointer;
    data2: Pointer;
  end;

  PSDL_SysWMmsg = Pointer;
  PPSDL_SysWMmsg = ^PSDL_SysWMmsg;

  SDL_SysWMEvent = record
    type_: Uint32;
    timestamp: Uint64;
    msg: PSDL_SysWMmsg;
  end;

  PSDL_Event = ^SDL_Event;
  SDL_Event = record
    case Integer of
      0: (type_: Uint32);
      1: (common: SDL_CommonEvent);
      2: (display: SDL_DisplayEvent);
      3: (window: SDL_WindowEvent);
      4: (key: SDL_KeyboardEvent);
      5: (edit: SDL_TextEditingEvent);
      6: (editExt: SDL_TextEditingExtEvent);
      7: (text: SDL_TextInputEvent);
      8: (motion: SDL_MouseMotionEvent);
      9: (button: SDL_MouseButtonEvent);
      10: (wheel: SDL_MouseWheelEvent);
      11: (jaxis: SDL_JoyAxisEvent);
      12: (jhat: SDL_JoyHatEvent);
      13: (jbutton: SDL_JoyButtonEvent);
      14: (jdevice: SDL_JoyDeviceEvent);
      15: (jbattery: SDL_JoyBatteryEvent);
      16: (caxis: SDL_GamepadAxisEvent);
      17: (cbutton: SDL_GamepadButtonEvent);
      18: (cdevice: SDL_GamepadDeviceEvent);
      19: (ctouchpad: SDL_GamepadTouchpadEvent);
      20: (csensor: SDL_GamepadSensorEvent);
      21: (adevice: SDL_AudioDeviceEvent);
      22: (sensor: SDL_SensorEvent);
      23: (quit: SDL_QuitEvent);
      24: (user: SDL_UserEvent);
      25: (syswm: SDL_SysWMEvent);
      26: (tfinger: SDL_TouchFingerEvent);
      27: (drop: SDL_DropEvent);
      28: (padding: array [0..127] of Uint8);
  end;

  SDL_eventaction = (
    SDL_ADDEVENT = 0,
    SDL_PEEKEVENT = 1,
    SDL_GETEVENT = 2);
  PSDL_eventaction = ^SDL_eventaction;

  SDL_EventFilter = function(userdata: Pointer; event: PSDL_Event): Integer; cdecl;
  PSDL_EventFilter = ^SDL_EventFilter;
  PSDL_Haptic = Pointer;
  PPSDL_Haptic = ^PSDL_Haptic;

  SDL_HapticDirection = record
    type_: Uint8;
    dir: array [0..2] of Sint32;
  end;

  SDL_HapticConstant = record
    type_: Uint16;
    direction: SDL_HapticDirection;
    length: Uint32;
    delay: Uint16;
    button: Uint16;
    interval: Uint16;
    level: Sint16;
    attack_length: Uint16;
    attack_level: Uint16;
    fade_length: Uint16;
    fade_level: Uint16;
  end;

  SDL_HapticPeriodic = record
    type_: Uint16;
    direction: SDL_HapticDirection;
    length: Uint32;
    delay: Uint16;
    button: Uint16;
    interval: Uint16;
    period: Uint16;
    magnitude: Sint16;
    offset: Sint16;
    phase: Uint16;
    attack_length: Uint16;
    attack_level: Uint16;
    fade_length: Uint16;
    fade_level: Uint16;
  end;

  SDL_HapticCondition = record
    type_: Uint16;
    direction: SDL_HapticDirection;
    length: Uint32;
    delay: Uint16;
    button: Uint16;
    interval: Uint16;
    right_sat: array [0..2] of Uint16;
    left_sat: array [0..2] of Uint16;
    right_coeff: array [0..2] of Sint16;
    left_coeff: array [0..2] of Sint16;
    deadband: array [0..2] of Uint16;
    center: array [0..2] of Sint16;
  end;

  SDL_HapticRamp = record
    type_: Uint16;
    direction: SDL_HapticDirection;
    length: Uint32;
    delay: Uint16;
    button: Uint16;
    interval: Uint16;
    start: Sint16;
    end_: Sint16;
    attack_length: Uint16;
    attack_level: Uint16;
    fade_length: Uint16;
    fade_level: Uint16;
  end;

  SDL_HapticLeftRight = record
    type_: Uint16;
    length: Uint32;
    large_magnitude: Uint16;
    small_magnitude: Uint16;
  end;

  SDL_HapticCustom = record
    type_: Uint16;
    direction: SDL_HapticDirection;
    length: Uint32;
    delay: Uint16;
    button: Uint16;
    interval: Uint16;
    channels: Uint8;
    period: Uint16;
    samples: Uint16;
    data: PUint16;
    attack_length: Uint16;
    attack_level: Uint16;
    fade_length: Uint16;
    fade_level: Uint16;
  end;

  PSDL_HapticEffect = ^SDL_HapticEffect;
  SDL_HapticEffect = record
    case Integer of
      0: (type_: Uint16);
      1: (constant: SDL_HapticConstant);
      2: (periodic: SDL_HapticPeriodic);
      3: (condition: SDL_HapticCondition);
      4: (ramp: SDL_HapticRamp);
      5: (leftright: SDL_HapticLeftRight);
      6: (custom: SDL_HapticCustom);
  end;

  PSDL_hid_device = Pointer;
  PPSDL_hid_device = ^PSDL_hid_device;

  SDL_hid_device_info = record
    path: PUTF8Char;
    vendor_id: Word;
    product_id: Word;
    serial_number: PWideChar;
    release_number: Word;
    manufacturer_string: PWideChar;
    product_string: PWideChar;
    usage_page: Word;
    usage: Word;
    interface_number: Integer;
    interface_class: Integer;
    interface_subclass: Integer;
    interface_protocol: Integer;
    next: PSDL_hid_device_info;
  end;

  SDL_HintPriority = (
    SDL_HINT_DEFAULT = 0,
    SDL_HINT_NORMAL = 1,
    SDL_HINT_OVERRIDE = 2);
  PSDL_HintPriority = ^SDL_HintPriority;

  SDL_HintCallback = procedure(userdata: Pointer; const name: PUTF8Char; const oldValue: PUTF8Char; const newValue: PUTF8Char); cdecl;

  SDL_InitFlags = (
    SDL_INIT_TIMER = 1,
    SDL_INIT_AUDIO = 16,
    SDL_INIT_VIDEO = 32,
    SDL_INIT_JOYSTICK = 512,
    SDL_INIT_HAPTIC = 4096,
    SDL_INIT_GAMEPAD = 8192,
    SDL_INIT_EVENTS = 16384,
    SDL_INIT_SENSOR = 32768);
  PSDL_InitFlags = ^SDL_InitFlags;

  SDL_Locale = record
    language: PUTF8Char;
    country: PUTF8Char;
  end;

  SDL_LogCategory = (
    SDL_LOG_CATEGORY_APPLICATION = 0,
    SDL_LOG_CATEGORY_ERROR = 1,
    SDL_LOG_CATEGORY_ASSERT = 2,
    SDL_LOG_CATEGORY_SYSTEM = 3,
    SDL_LOG_CATEGORY_AUDIO = 4,
    SDL_LOG_CATEGORY_VIDEO = 5,
    SDL_LOG_CATEGORY_RENDER = 6,
    SDL_LOG_CATEGORY_INPUT = 7,
    SDL_LOG_CATEGORY_TEST = 8,
    SDL_LOG_CATEGORY_RESERVED1 = 9,
    SDL_LOG_CATEGORY_RESERVED2 = 10,
    SDL_LOG_CATEGORY_RESERVED3 = 11,
    SDL_LOG_CATEGORY_RESERVED4 = 12,
    SDL_LOG_CATEGORY_RESERVED5 = 13,
    SDL_LOG_CATEGORY_RESERVED6 = 14,
    SDL_LOG_CATEGORY_RESERVED7 = 15,
    SDL_LOG_CATEGORY_RESERVED8 = 16,
    SDL_LOG_CATEGORY_RESERVED9 = 17,
    SDL_LOG_CATEGORY_RESERVED10 = 18,
    SDL_LOG_CATEGORY_CUSTOM = 19);
  PSDL_LogCategory = ^SDL_LogCategory;

  SDL_LogPriority = (
    SDL_LOG_PRIORITY_VERBOSE = 1,
    SDL_LOG_PRIORITY_DEBUG = 2,
    SDL_LOG_PRIORITY_INFO = 3,
    SDL_LOG_PRIORITY_WARN = 4,
    SDL_LOG_PRIORITY_ERROR = 5,
    SDL_LOG_PRIORITY_CRITICAL = 6,
    SDL_NUM_LOG_PRIORITIES = 7);
  PSDL_LogPriority = ^SDL_LogPriority;

  SDL_LogOutputFunction = procedure(userdata: Pointer; category: Integer; priority: SDL_LogPriority; const message_: PUTF8Char); cdecl;
  PSDL_LogOutputFunction = ^SDL_LogOutputFunction;

  SDL_MessageBoxFlags = (
    SDL_MESSAGEBOX_ERROR = 16,
    SDL_MESSAGEBOX_WARNING = 32,
    SDL_MESSAGEBOX_INFORMATION = 64,
    SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 128,
    SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 256);
  PSDL_MessageBoxFlags = ^SDL_MessageBoxFlags;

  SDL_MessageBoxButtonFlags = (
    SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1,
    SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2);
  PSDL_MessageBoxButtonFlags = ^SDL_MessageBoxButtonFlags;

  SDL_MessageBoxButtonData = record
    flags: Uint32;
    buttonid: Integer;
    text: PUTF8Char;
  end;

  SDL_MessageBoxColor = record
    r: Uint8;
    g: Uint8;
    b: Uint8;
  end;

  SDL_MessageBoxColorType = (
    SDL_MESSAGEBOX_COLOR_BACKGROUND = 0,
    SDL_MESSAGEBOX_COLOR_TEXT = 1,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER = 2,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED = 4,
    SDL_MESSAGEBOX_COLOR_MAX = 5);
  PSDL_MessageBoxColorType = ^SDL_MessageBoxColorType;

  SDL_MessageBoxColorScheme = record
    colors: array [0..4] of SDL_MessageBoxColor;
  end;

  SDL_MessageBoxData = record
    flags: Uint32;
    window: PSDL_Window;
    title: PUTF8Char;
    message_: PUTF8Char;
    numbuttons: Integer;
    buttons: PSDL_MessageBoxButtonData;
    colorScheme: PSDL_MessageBoxColorScheme;
  end;

  SDL_MetalView = Pointer;

  SDL_PowerState = (
    SDL_POWERSTATE_UNKNOWN = 0,
    SDL_POWERSTATE_ON_BATTERY = 1,
    SDL_POWERSTATE_NO_BATTERY = 2,
    SDL_POWERSTATE_CHARGING = 3,
    SDL_POWERSTATE_CHARGED = 4);
  PSDL_PowerState = ^SDL_PowerState;

  SDL_RendererFlags = (
    SDL_RENDERER_SOFTWARE = 1,
    SDL_RENDERER_ACCELERATED = 2,
    SDL_RENDERER_PRESENTVSYNC = 4,
    SDL_RENDERER_TARGETTEXTURE = 8);
  PSDL_RendererFlags = ^SDL_RendererFlags;

  SDL_RendererInfo = record
    name: PUTF8Char;
    flags: Uint32;
    num_texture_formats: Uint32;
    texture_formats: array [0..15] of Uint32;
    max_texture_width: Integer;
    max_texture_height: Integer;
  end;

  SDL_Vertex = record
    position: SDL_FPoint;
    color: SDL_Color;
    tex_coord: SDL_FPoint;
  end;

  SDL_ScaleMode = (
    SDL_ScaleModeNearest = 0,
    SDL_ScaleModeLinear = 1,
    SDL_ScaleModeBest = 2);
  PSDL_ScaleMode = ^SDL_ScaleMode;

  SDL_TextureAccess = (
    SDL_TEXTUREACCESS_STATIC = 0,
    SDL_TEXTUREACCESS_STREAMING = 1,
    SDL_TEXTUREACCESS_TARGET = 2);
  PSDL_TextureAccess = ^SDL_TextureAccess;

  SDL_TextureModulate = (
    SDL_TEXTUREMODULATE_NONE = 0,
    SDL_TEXTUREMODULATE_COLOR = 1,
    SDL_TEXTUREMODULATE_ALPHA = 2);
  PSDL_TextureModulate = ^SDL_TextureModulate;

  SDL_RendererFlip = (
    SDL_FLIP_NONE = 0,
    SDL_FLIP_HORIZONTAL = 1,
    SDL_FLIP_VERTICAL = 2);
  PSDL_RendererFlip = ^SDL_RendererFlip;
  PSDL_Renderer = Pointer;
  PPSDL_Renderer = ^PSDL_Renderer;
  PSDL_Texture = Pointer;
  PPSDL_Texture = ^PSDL_Texture;

  WindowShapeMode = (
    ShapeModeDefault = 0,
    ShapeModeBinarizeAlpha = 1,
    ShapeModeReverseBinarizeAlpha = 2,
    ShapeModeColorKey = 3);
  PWindowShapeMode = ^WindowShapeMode;

  SDL_WindowShapeParams = record
    case Integer of
      0: (binarizationCutoff: Uint8);
      1: (colorKey: SDL_Color);
  end;

  SDL_WindowShapeMode = record
    mode: WindowShapeMode;
    parameters: SDL_WindowShapeParams;
  end;

  SDL_WindowsMessageHook = procedure(userdata: Pointer; hWnd: Pointer; message_: Cardinal; wParam: Uint64; lParam: Sint64); cdecl;
  PIDirect3DDevice9 = Pointer;
  PPIDirect3DDevice9 = ^PIDirect3DDevice9;
  PID3D11Device = Pointer;
  PPID3D11Device = ^PID3D11Device;
  PID3D12Device = Pointer;
  PPID3D12Device = ^PID3D12Device;

  SDL_TimerCallback = function(interval: Uint32; param: Pointer): Uint32; cdecl;
  SDL_TimerID = Integer;

  SDL_version = record
    major: Uint8;
    minor: Uint8;
    patch: Uint8;
  end;

  stbtt__buf = record
    data: PByte;
    cursor: Integer;
    size: Integer;
  end;

  stbtt_bakedchar = record
    x0: Word;
    y0: Word;
    x1: Word;
    y1: Word;
    xoff: Single;
    yoff: Single;
    xadvance: Single;
  end;

  stbtt_aligned_quad = record
    x0: Single;
    y0: Single;
    s0: Single;
    t0: Single;
    x1: Single;
    y1: Single;
    s1: Single;
    t1: Single;
  end;

  stbtt_packedchar = record
    x0: Word;
    y0: Word;
    x1: Word;
    y1: Word;
    xoff: Single;
    yoff: Single;
    xadvance: Single;
    xoff2: Single;
    yoff2: Single;
  end;

  Pstbrp_rect = Pointer;
  PPstbrp_rect = ^Pstbrp_rect;

  stbtt_pack_range = record
    font_size: Single;
    first_unicode_codepoint_in_range: Integer;
    array_of_unicode_codepoints: PInteger;
    num_chars: Integer;
    chardata_for_range: Pstbtt_packedchar;
    h_oversample: Byte;
    v_oversample: Byte;
  end;

  stbtt_pack_context = record
    user_allocator_context: Pointer;
    pack_info: Pointer;
    width: Integer;
    height: Integer;
    stride_in_bytes: Integer;
    padding: Integer;
    skip_missing: Integer;
    h_oversample: Cardinal;
    v_oversample: Cardinal;
    pixels: PByte;
    nodes: Pointer;
  end;

  stbtt_fontinfo = record
    userdata: Pointer;
    data: PByte;
    fontstart: Integer;
    numGlyphs: Integer;
    loca: Integer;
    head: Integer;
    glyf: Integer;
    hhea: Integer;
    hmtx: Integer;
    kern: Integer;
    gpos: Integer;
    svg: Integer;
    index_map: Integer;
    indexToLocFormat: Integer;
    cff: stbtt__buf;
    charstrings: stbtt__buf;
    gsubrs: stbtt__buf;
    subrs: stbtt__buf;
    fontdicts: stbtt__buf;
    fdselect: stbtt__buf;
  end;

  stbtt_kerningentry = record
    glyph1: Integer;
    glyph2: Integer;
    advance: Integer;
  end;

  _anonymous_type_9 = (
    STBTT_vmove = 1,
    STBTT_vline = 2,
    STBTT_vcurve = 3,
    STBTT_vcubic = 4);
  P_anonymous_type_9 = ^_anonymous_type_9;

  stbtt_vertex = record
    x: Smallint;
    y: Smallint;
    cx: Smallint;
    cy: Smallint;
    cx1: Smallint;
    cy1: Smallint;
    type_: Byte;
    padding: Byte;
  end;

  stbtt__bitmap = record
    w: Integer;
    h: Integer;
    stride: Integer;
    pixels: PByte;
  end;

  _anonymous_type_10 = (
    STBTT_PLATFORM_ID_UNICODE = 0,
    STBTT_PLATFORM_ID_MAC = 1,
    STBTT_PLATFORM_ID_ISO = 2,
    STBTT_PLATFORM_ID_MICROSOFT = 3);
  P_anonymous_type_10 = ^_anonymous_type_10;

  _anonymous_type_11 = (
    STBTT_UNICODE_EID_UNICODE_1_0 = 0,
    STBTT_UNICODE_EID_UNICODE_1_1 = 1,
    STBTT_UNICODE_EID_ISO_10646 = 2,
    STBTT_UNICODE_EID_UNICODE_2_0_BMP = 3,
    STBTT_UNICODE_EID_UNICODE_2_0_FULL = 4);
  P_anonymous_type_11 = ^_anonymous_type_11;

  _anonymous_type_12 = (
    STBTT_MS_EID_SYMBOL = 0,
    STBTT_MS_EID_UNICODE_BMP = 1,
    STBTT_MS_EID_SHIFTJIS = 2,
    STBTT_MS_EID_UNICODE_FULL = 10);
  P_anonymous_type_12 = ^_anonymous_type_12;

  _anonymous_type_13 = (
    STBTT_MAC_EID_ROMAN = 0,
    STBTT_MAC_EID_ARABIC = 4,
    STBTT_MAC_EID_JAPANESE = 1,
    STBTT_MAC_EID_HEBREW = 5,
    STBTT_MAC_EID_CHINESE_TRAD = 2,
    STBTT_MAC_EID_GREEK = 6,
    STBTT_MAC_EID_KOREAN = 3,
    STBTT_MAC_EID_RUSSIAN = 7);
  P_anonymous_type_13 = ^_anonymous_type_13;

  _anonymous_type_14 = (
    STBTT_MS_LANG_ENGLISH = 1033,
    STBTT_MS_LANG_ITALIAN = 1040,
    STBTT_MS_LANG_CHINESE = 2052,
    STBTT_MS_LANG_JAPANESE = 1041,
    STBTT_MS_LANG_DUTCH = 1043,
    STBTT_MS_LANG_KOREAN = 1042,
    STBTT_MS_LANG_FRENCH = 1036,
    STBTT_MS_LANG_RUSSIAN = 1049,
    STBTT_MS_LANG_GERMAN = 1031,
    STBTT_MS_LANG_SPANISH = 1033,
    STBTT_MS_LANG_HEBREW = 1037,
    STBTT_MS_LANG_SWEDISH = 1053);
  P_anonymous_type_14 = ^_anonymous_type_14;

  _anonymous_type_15 = (
    STBTT_MAC_LANG_ENGLISH = 0,
    STBTT_MAC_LANG_JAPANESE = 11,
    STBTT_MAC_LANG_ARABIC = 12,
    STBTT_MAC_LANG_KOREAN = 23,
    STBTT_MAC_LANG_DUTCH = 4,
    STBTT_MAC_LANG_RUSSIAN = 32,
    STBTT_MAC_LANG_FRENCH = 1,
    STBTT_MAC_LANG_SPANISH = 6,
    STBTT_MAC_LANG_GERMAN = 2,
    STBTT_MAC_LANG_SWEDISH = 5,
    STBTT_MAC_LANG_HEBREW = 10,
    STBTT_MAC_LANG_CHINESE_SIMPLIFIED = 33,
    STBTT_MAC_LANG_ITALIAN = 3,
    STBTT_MAC_LANG_CHINESE_TRAD = 19);
  P_anonymous_type_15 = ^_anonymous_type_15;

  _anonymous_type_16 = (
    STBI_default = 0,
    STBI_grey = 1,
    STBI_grey_alpha = 2,
    STBI_rgb = 3,
    STBI_rgb_alpha = 4);
  P_anonymous_type_16 = ^_anonymous_type_16;
  stbi_uc = Byte;
  Pstbi_uc = ^stbi_uc;
  stbi_us = Word;
  Pstbi_us = ^stbi_us;

  stbi_io_callbacks = record
    read: function(user: Pointer; data: PUTF8Char; size: Integer): Integer; cdecl;
    skip: procedure(user: Pointer; n: Integer); cdecl;
    eof: function(user: Pointer): Integer; cdecl;
  end;

  Pstbi_write_func = procedure(context: Pointer; data: Pointer; size: Integer); cdecl;
  Pplm_t = Pointer;
  PPplm_t = ^Pplm_t;
  Pplm_buffer_t = Pointer;
  PPplm_buffer_t = ^Pplm_buffer_t;
  Pplm_demux_t = Pointer;
  PPplm_demux_t = ^Pplm_demux_t;
  Pplm_video_t = Pointer;
  PPplm_video_t = ^Pplm_video_t;
  Pplm_audio_t = Pointer;
  PPplm_audio_t = ^Pplm_audio_t;

  plm_packet_t = record
    type_: Integer;
    pts: Double;
    length: NativeUInt;
    data: PUInt8;
  end;

  plm_plane_t = record
    width: Cardinal;
    height: Cardinal;
    data: PUInt8;
  end;

  plm_frame_t = record
    time: Double;
    width: Cardinal;
    height: Cardinal;
    y: plm_plane_t;
    cr: plm_plane_t;
    cb: plm_plane_t;
  end;

  plm_video_decode_callback = procedure(self: Pplm_t; frame: Pplm_frame_t; user: Pointer); cdecl;

  plm_samples_t = record
    time: Double;
    count: Cardinal;
    interleaved: array [0..2303] of Single;
  end;

  plm_audio_decode_callback = procedure(self: Pplm_t; samples: Pplm_samples_t; user: Pointer); cdecl;

  plm_buffer_load_callback = procedure(self: Pplm_buffer_t; user: Pointer); cdecl;
  nk_char = Int8;
  nk_uchar = UInt8;
  nk_byte = UInt8;
  Pnk_byte = ^nk_byte;
  nk_short = Int16;
  nk_ushort = UInt16;
  nk_int = Int32;
  nk_uint = UInt32;
  Pnk_uint = ^nk_uint;
  nk_size = UIntPtr;
  Pnk_size = ^nk_size;
  nk_ptr = UIntPtr;
  nk_bool = Integer;
  Pnk_bool = ^nk_bool;
  nk_hash = nk_uint;
  nk_flags = nk_uint;
  Pnk_flags = ^nk_flags;
  nk_rune = nk_uint;
  Pnk_rune = ^nk_rune;
  _dummy_array0 = array [0..0] of UTF8Char;
  _dummy_array1 = array [0..0] of UTF8Char;
  _dummy_array2 = array [0..0] of UTF8Char;
  _dummy_array3 = array [0..0] of UTF8Char;
  _dummy_array4 = array [0..0] of UTF8Char;
  _dummy_array5 = array [0..0] of UTF8Char;
  _dummy_array6 = array [0..0] of UTF8Char;
  _dummy_array7 = array [0..0] of UTF8Char;
  _dummy_array8 = array [0..0] of UTF8Char;
  _dummy_array9 = array [0..0] of UTF8Char;

  _anonymous_type_17 = (
    nk_false = 0,
    nk_true = 1);
  P_anonymous_type_17 = ^_anonymous_type_17;

  nk_color = record
    r: nk_byte;
    g: nk_byte;
    b: nk_byte;
    a: nk_byte;
  end;

  nk_colorf = record
    r: Single;
    g: Single;
    b: Single;
    a: Single;
  end;

  nk_vec2 = record
    x: Single;
    y: Single;
  end;

  nk_vec2i = record
    x: Smallint;
    y: Smallint;
  end;

  nk_rect = record
    x: Single;
    y: Single;
    w: Single;
    h: Single;
  end;

  nk_recti = record
    x: Smallint;
    y: Smallint;
    w: Smallint;
    h: Smallint;
  end;

  nk_glyph = array [0..3] of UTF8Char;

  nk_handle = record
    case Integer of
      0: (ptr: Pointer);
      1: (id: Integer);
  end;

  nk_image = record
    handle: nk_handle;
    w: nk_ushort;
    h: nk_ushort;
    region: array [0..3] of nk_ushort;
  end;

  nk_nine_slice = record
    img: nk_image;
    l: nk_ushort;
    t: nk_ushort;
    r: nk_ushort;
    b: nk_ushort;
  end;

  nk_cursor = record
    img: nk_image;
    size: nk_vec2;
    offset: nk_vec2;
  end;

  nk_scroll = record
    x: nk_uint;
    y: nk_uint;
  end;

  nk_heading = (
    NK_UP = 0,
    NK_RIGHT = 1,
    NK_DOWN = 2,
    NK_LEFT = 3);
  Pnk_heading = ^nk_heading;

  nk_button_behavior = (
    NK_BUTTON_DEFAULT = 0,
    NK_BUTTON_REPEATER = 1);
  Pnk_button_behavior = ^nk_button_behavior;

  nk_modify = (
    NK_FIXED = 0,
    NK_MODIFIABLE = 1);
  Pnk_modify = ^nk_modify;

  nk_orientation = (
    NK_VERTICAL = 0,
    NK_HORIZONTAL = 1);
  Pnk_orientation = ^nk_orientation;

  nk_collapse_states = (
    NK_MINIMIZED = 0,
    NK_MAXIMIZED = 1);
  Pnk_collapse_states = ^nk_collapse_states;

  nk_show_states = (
    NK_HIDDEN = 0,
    NK_SHOWN = 1);
  Pnk_show_states = ^nk_show_states;

  nk_chart_type = (
    NK_CHART_LINES = 0,
    NK_CHART_COLUMN = 1,
    NK_CHART_MAX = 2);
  Pnk_chart_type = ^nk_chart_type;

  nk_chart_event = (
    NK_CHART_HOVERING = 1,
    NK_CHART_CLICKED = 2);
  Pnk_chart_event = ^nk_chart_event;

  nk_color_format = (
    NK_RGB = 0,
    NK_RGBA = 1);
  Pnk_color_format = ^nk_color_format;

  nk_popup_type = (
    NK_POPUP_STATIC = 0,
    NK_POPUP_DYNAMIC = 1);
  Pnk_popup_type = ^nk_popup_type;

  nk_layout_format = (
    NK_DYNAMIC = 0,
    NK_STATIC = 1);
  Pnk_layout_format = ^nk_layout_format;

  nk_tree_type = (
    NK_TREE_NODE = 0,
    NK_TREE_TAB = 1);
  Pnk_tree_type = ^nk_tree_type;

  nk_plugin_alloc = function(p1: nk_handle; old: Pointer; p3: nk_size): Pointer; cdecl;

  nk_plugin_free = procedure(p1: nk_handle; old: Pointer); cdecl;

  nk_plugin_filter = function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;

  nk_plugin_paste = procedure(p1: nk_handle; p2: Pnk_text_edit); cdecl;

  nk_plugin_copy = procedure(p1: nk_handle; const p2: PUTF8Char; len: Integer); cdecl;

  nk_allocator = record
    userdata: nk_handle;
    alloc: nk_plugin_alloc;
    free: nk_plugin_free;
  end;

  nk_symbol_type = (
    NK_SYMBOL_NONE = 0,
    NK_SYMBOL_X = 1,
    NK_SYMBOL_UNDERSCORE = 2,
    NK_SYMBOL_CIRCLE_SOLID = 3,
    NK_SYMBOL_CIRCLE_OUTLINE = 4,
    NK_SYMBOL_RECT_SOLID = 5,
    NK_SYMBOL_RECT_OUTLINE = 6,
    NK_SYMBOL_TRIANGLE_UP = 7,
    NK_SYMBOL_TRIANGLE_DOWN = 8,
    NK_SYMBOL_TRIANGLE_LEFT = 9,
    NK_SYMBOL_TRIANGLE_RIGHT = 10,
    NK_SYMBOL_PLUS = 11,
    NK_SYMBOL_MINUS = 12,
    NK_SYMBOL_MAX = 13);
  Pnk_symbol_type = ^nk_symbol_type;

  nk_keys = (
    NK_KEY_NONE = 0,
    NK_KEY_SHIFT = 1,
    NK_KEY_CTRL = 2,
    NK_KEY_DEL = 3,
    NK_KEY_ENTER = 4,
    NK_KEY_TAB = 5,
    NK_KEY_BACKSPACE = 6,
    NK_KEY_COPY = 7,
    NK_KEY_CUT = 8,
    NK_KEY_PASTE = 9,
    NK_KEY_UP = 10,
    NK_KEY_DOWN = 11,
    NK_KEY_LEFT = 12,
    NK_KEY_RIGHT = 13,
    NK_KEY_TEXT_INSERT_MODE = 14,
    NK_KEY_TEXT_REPLACE_MODE = 15,
    NK_KEY_TEXT_RESET_MODE = 16,
    NK_KEY_TEXT_LINE_START = 17,
    NK_KEY_TEXT_LINE_END = 18,
    NK_KEY_TEXT_START = 19,
    NK_KEY_TEXT_END = 20,
    NK_KEY_TEXT_UNDO = 21,
    NK_KEY_TEXT_REDO = 22,
    NK_KEY_TEXT_SELECT_ALL = 23,
    NK_KEY_TEXT_WORD_LEFT = 24,
    NK_KEY_TEXT_WORD_RIGHT = 25,
    NK_KEY_SCROLL_START = 26,
    NK_KEY_SCROLL_END = 27,
    NK_KEY_SCROLL_DOWN = 28,
    NK_KEY_SCROLL_UP = 29,
    NK_KEY_MAX = 30);
  Pnk_keys = ^nk_keys;

  nk_buttons = (
    NK_BUTTON_LEFT = 0,
    NK_BUTTON_MIDDLE = 1,
    NK_BUTTON_RIGHT = 2,
    NK_BUTTON_DOUBLE = 3,
    NK_BUTTON_MAX = 4);
  Pnk_buttons = ^nk_buttons;

  nk_anti_aliasing = (
    NK_ANTI_ALIASING_OFF = 0,
    NK_ANTI_ALIASING_ON = 1);
  Pnk_anti_aliasing = ^nk_anti_aliasing;

  nk_convert_result = (
    NK_CONVERT_SUCCESS = 0,
    NK_CONVERT_INVALID_PARAM = 1,
    NK_CONVERT_COMMAND_BUFFER_FULL = 2,
    NK_CONVERT_VERTEX_BUFFER_FULL = 4,
    NK_CONVERT_ELEMENT_BUFFER_FULL = 8);
  Pnk_convert_result = ^nk_convert_result;

  nk_draw_null_texture = record
    texture: nk_handle;
    uv: nk_vec2;
  end;

  nk_convert_config = record
    global_alpha: Single;
    line_AA: nk_anti_aliasing;
    shape_AA: nk_anti_aliasing;
    circle_segment_count: Cardinal;
    arc_segment_count: Cardinal;
    curve_segment_count: Cardinal;
    tex_null: nk_draw_null_texture;
    vertex_layout: Pnk_draw_vertex_layout_element;
    vertex_size: nk_size;
    vertex_alignment: nk_size;
  end;

  nk_panel_flags = (
    NK_WINDOW_BORDER = 1,
    NK_WINDOW_MOVABLE = 2,
    NK_WINDOW_SCALABLE = 4,
    NK_WINDOW_CLOSABLE = 8,
    NK_WINDOW_MINIMIZABLE = 16,
    NK_WINDOW_NO_SCROLLBAR = 32,
    NK_WINDOW_TITLE = 64,
    NK_WINDOW_SCROLL_AUTO_HIDE = 128,
    NK_WINDOW_BACKGROUND = 256,
    NK_WINDOW_SCALE_LEFT = 512,
    NK_WINDOW_NO_INPUT = 1024);
  Pnk_panel_flags = ^nk_panel_flags;

  nk_list_view = record
    begin_: Integer;
    end_: Integer;
    count: Integer;
    total_height: Integer;
    ctx: Pnk_context;
    scroll_pointer: Pnk_uint;
    scroll_value: nk_uint;
  end;

  nk_widget_layout_states = (
    NK_WIDGET_INVALID = 0,
    NK_WIDGET_VALID = 1,
    NK_WIDGET_ROM = 2);
  Pnk_widget_layout_states = ^nk_widget_layout_states;

  nk_widget_states = (
    NK_WIDGET_STATE_MODIFIED = 2,
    NK_WIDGET_STATE_INACTIVE = 4,
    NK_WIDGET_STATE_ENTERED = 8,
    NK_WIDGET_STATE_HOVER = 16,
    NK_WIDGET_STATE_ACTIVED = 32,
    NK_WIDGET_STATE_LEFT = 64,
    NK_WIDGET_STATE_HOVERED = 18,
    NK_WIDGET_STATE_ACTIVE = 34);
  Pnk_widget_states = ^nk_widget_states;

  nk_text_align = (
    NK_TEXT_ALIGN_LEFT = 1,
    NK_TEXT_ALIGN_CENTERED = 2,
    NK_TEXT_ALIGN_RIGHT = 4,
    NK_TEXT_ALIGN_TOP = 8,
    NK_TEXT_ALIGN_MIDDLE = 16,
    NK_TEXT_ALIGN_BOTTOM = 32);
  Pnk_text_align = ^nk_text_align;

  nk_text_alignment = (
    NK_TEXT_LEFT = 17,
    NK_TEXT_CENTERED = 18,
    NK_TEXT_RIGHT = 20);
  Pnk_text_alignment = ^nk_text_alignment;

  nk_edit_flags = (
    NK_EDIT_DEFAULT = 0,
    NK_EDIT_READ_ONLY = 1,
    NK_EDIT_AUTO_SELECT = 2,
    NK_EDIT_SIG_ENTER = 4,
    NK_EDIT_ALLOW_TAB = 8,
    NK_EDIT_NO_CURSOR = 16,
    NK_EDIT_SELECTABLE = 32,
    NK_EDIT_CLIPBOARD = 64,
    NK_EDIT_CTRL_ENTER_NEWLINE = 128,
    NK_EDIT_NO_HORIZONTAL_SCROLL = 256,
    NK_EDIT_ALWAYS_INSERT_MODE = 512,
    NK_EDIT_MULTILINE = 1024,
    NK_EDIT_GOTO_END_ON_ACTIVATE = 2048);
  Pnk_edit_flags = ^nk_edit_flags;

  nk_edit_types = (
    NK_EDIT_SIMPLE = 512,
    NK_EDIT_FIELD = 608,
    NK_EDIT_BOX = 1640,
    NK_EDIT_EDITOR = 1128);
  Pnk_edit_types = ^nk_edit_types;

  nk_edit_events = (
    NK_EDIT_ACTIVE = 1,
    NK_EDIT_INACTIVE = 2,
    NK_EDIT_ACTIVATED = 4,
    NK_EDIT_DEACTIVATED = 8,
    NK_EDIT_COMMITED = 16);
  Pnk_edit_events = ^nk_edit_events;

  nk_style_colors = (
    NK_COLOR_TEXT = 0,
    NK_COLOR_WINDOW = 1,
    NK_COLOR_HEADER = 2,
    NK_COLOR_BORDER = 3,
    NK_COLOR_BUTTON = 4,
    NK_COLOR_BUTTON_HOVER = 5,
    NK_COLOR_BUTTON_ACTIVE = 6,
    NK_COLOR_TOGGLE = 7,
    NK_COLOR_TOGGLE_HOVER = 8,
    NK_COLOR_TOGGLE_CURSOR = 9,
    NK_COLOR_SELECT = 10,
    NK_COLOR_SELECT_ACTIVE = 11,
    NK_COLOR_SLIDER = 12,
    NK_COLOR_SLIDER_CURSOR = 13,
    NK_COLOR_SLIDER_CURSOR_HOVER = 14,
    NK_COLOR_SLIDER_CURSOR_ACTIVE = 15,
    NK_COLOR_PROPERTY = 16,
    NK_COLOR_EDIT = 17,
    NK_COLOR_EDIT_CURSOR = 18,
    NK_COLOR_COMBO = 19,
    NK_COLOR_CHART = 20,
    NK_COLOR_CHART_COLOR = 21,
    NK_COLOR_CHART_COLOR_HIGHLIGHT = 22,
    NK_COLOR_SCROLLBAR = 23,
    NK_COLOR_SCROLLBAR_CURSOR = 24,
    NK_COLOR_SCROLLBAR_CURSOR_HOVER = 25,
    NK_COLOR_SCROLLBAR_CURSOR_ACTIVE = 26,
    NK_COLOR_TAB_HEADER = 27,
    NK_COLOR_COUNT = 28);
  Pnk_style_colors = ^nk_style_colors;

  nk_style_cursor = (
    NK_CURSOR_ARROW = 0,
    NK_CURSOR_TEXT = 1,
    NK_CURSOR_MOVE = 2,
    NK_CURSOR_RESIZE_VERTICAL = 3,
    NK_CURSOR_RESIZE_HORIZONTAL = 4,
    NK_CURSOR_RESIZE_TOP_LEFT_DOWN_RIGHT = 5,
    NK_CURSOR_RESIZE_TOP_RIGHT_DOWN_LEFT = 6,
    NK_CURSOR_COUNT = 7);
  Pnk_style_cursor = ^nk_style_cursor;

  nk_text_width_f = function(p1: nk_handle; h: Single; const p3: PUTF8Char; len: Integer): Single; cdecl;

  nk_query_font_glyph_f = procedure(handle: nk_handle; font_height: Single; glyph: Pnk_user_font_glyph; codepoint: nk_rune; next_codepoint: nk_rune); cdecl;

  nk_user_font_glyph = record
    uv: array [0..1] of nk_vec2;
    offset: nk_vec2;
    width: Single;
    height: Single;
    xadvance: Single;
  end;

  nk_user_font = record
    userdata: nk_handle;
    height: Single;
    width: nk_text_width_f;
    query: nk_query_font_glyph_f;
    texture: nk_handle;
  end;

  nk_font_coord_type = (
    NK_COORD_UV = 0,
    NK_COORD_PIXEL = 1);
  Pnk_font_coord_type = ^nk_font_coord_type;

  nk_baked_font = record
    height: Single;
    ascent: Single;
    descent: Single;
    glyph_offset: nk_rune;
    glyph_count: nk_rune;
    ranges: Pnk_rune;
  end;

  nk_font_config = record
    next: Pnk_font_config;
    ttf_blob: Pointer;
    ttf_size: nk_size;
    ttf_data_owned_by_atlas: Byte;
    merge_mode: Byte;
    pixel_snap: Byte;
    oversample_v: Byte;
    oversample_h: Byte;
    padding: array [0..2] of Byte;
    size: Single;
    coord_type: nk_font_coord_type;
    spacing: nk_vec2;
    range: Pnk_rune;
    font: Pnk_baked_font;
    fallback_glyph: nk_rune;
    n: Pnk_font_config;
    p: Pnk_font_config;
  end;

  nk_font_glyph = record
    codepoint: nk_rune;
    xadvance: Single;
    x0: Single;
    y0: Single;
    x1: Single;
    y1: Single;
    w: Single;
    h: Single;
    u0: Single;
    v0: Single;
    u1: Single;
    v1: Single;
  end;

  nk_font = record
    next: Pnk_font;
    handle: nk_user_font;
    info: nk_baked_font;
    scale: Single;
    glyphs: Pnk_font_glyph;
    fallback: Pnk_font_glyph;
    fallback_codepoint: nk_rune;
    texture: nk_handle;
    config: Pnk_font_config;
  end;

  nk_font_atlas_format = (
    NK_FONT_ATLAS_ALPHA8 = 0,
    NK_FONT_ATLAS_RGBA32 = 1);
  Pnk_font_atlas_format = ^nk_font_atlas_format;

  nk_font_atlas = record
    pixel: Pointer;
    tex_width: Integer;
    tex_height: Integer;
    permanent: nk_allocator;
    temporary: nk_allocator;
    custom: nk_recti;
    cursors: array [0..6] of nk_cursor;
    glyph_count: Integer;
    glyphs: Pnk_font_glyph;
    default_font: Pnk_font;
    fonts: Pnk_font;
    config: Pnk_font_config;
    font_num: Integer;
  end;

  nk_memory_status = record
    memory: Pointer;
    type_: Cardinal;
    size: nk_size;
    allocated: nk_size;
    needed: nk_size;
    calls: nk_size;
  end;

  nk_allocation_type = (
    NK_BUFFER_FIXED = 0,
    NK_BUFFER_DYNAMIC = 1);
  Pnk_allocation_type = ^nk_allocation_type;

  nk_buffer_allocation_type = (
    NK_BUFFER_FRONT = 0,
    NK_BUFFER_BACK = 1,
    NK_BUFFER_MAX = 2);
  Pnk_buffer_allocation_type = ^nk_buffer_allocation_type;

  nk_buffer_marker = record
    active: nk_bool;
    offset: nk_size;
  end;

  nk_memory = record
    ptr: Pointer;
    size: nk_size;
  end;

  nk_buffer = record
    marker: array [0..1] of nk_buffer_marker;
    pool: nk_allocator;
    type_: nk_allocation_type;
    memory: nk_memory;
    grow_factor: Single;
    allocated: nk_size;
    needed: nk_size;
    calls: nk_size;
    size: nk_size;
  end;

  nk_str = record
    buffer: nk_buffer;
    len: Integer;
  end;

  nk_clipboard = record
    userdata: nk_handle;
    paste: nk_plugin_paste;
    copy: nk_plugin_copy;
  end;

  nk_text_undo_record = record
    where: Integer;
    insert_length: Smallint;
    delete_length: Smallint;
    char_storage: Smallint;
  end;

  nk_text_undo_state = record
    undo_rec: array [0..98] of nk_text_undo_record;
    undo_char: array [0..998] of nk_rune;
    undo_point: Smallint;
    redo_point: Smallint;
    undo_char_point: Smallint;
    redo_char_point: Smallint;
  end;

  nk_text_edit_type = (
    NK_TEXT_EDIT_SINGLE_LINE = 0,
    NK_TEXT_EDIT_MULTI_LINE = 1);
  Pnk_text_edit_type = ^nk_text_edit_type;

  nk_text_edit_mode = (
    NK_TEXT_EDIT_MODE_VIEW = 0,
    NK_TEXT_EDIT_MODE_INSERT = 1,
    NK_TEXT_EDIT_MODE_REPLACE = 2);
  Pnk_text_edit_mode = ^nk_text_edit_mode;

  nk_text_edit = record
    clip: nk_clipboard;
    string_: nk_str;
    filter: nk_plugin_filter;
    scrollbar: nk_vec2;
    cursor: Integer;
    select_start: Integer;
    select_end: Integer;
    mode: Byte;
    cursor_at_end_of_line: Byte;
    initialized: Byte;
    has_preferred_x: Byte;
    single_line: Byte;
    active: Byte;
    padding1: Byte;
    preferred_x: Single;
    undo: nk_text_undo_state;
  end;

  nk_command_type = (
    NK_COMMAND_NOP_ = 0,
    NK_COMMAND_SCISSOR_ = 1,
    NK_COMMAND_LINE_ = 2,
    NK_COMMAND_CURVE_ = 3,
    NK_COMMAND_RECT_ = 4,
    NK_COMMAND_RECT_FILLED_ = 5,
    NK_COMMAND_RECT_MULTI_COLOR_ = 6,
    NK_COMMAND_CIRCLE_ = 7,
    NK_COMMAND_CIRCLE_FILLED_ = 8,
    NK_COMMAND_ARC_ = 9,
    NK_COMMAND_ARC_FILLED_ = 10,
    NK_COMMAND_TRIANGLE_ = 11,
    NK_COMMAND_TRIANGLE_FILLED_ = 12,
    NK_COMMAND_POLYGON_ = 13,
    NK_COMMAND_POLYGON_FILLED_ = 14,
    NK_COMMAND_POLYLINE_ = 15,
    NK_COMMAND_TEXT_ = 16,
    NK_COMMAND_IMAGE_ = 17,
    NK_COMMAND_CUSTOM_ = 18);
  Pnk_command_type = ^nk_command_type;

  nk_command = record
    type_: nk_command_type;
    next: nk_size;
  end;

  nk_command_scissor = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
  end;

  nk_command_line = record
    header: nk_command;
    line_thickness: Word;
    begin_: nk_vec2i;
    end_: nk_vec2i;
    color: nk_color;
  end;

  nk_command_curve = record
    header: nk_command;
    line_thickness: Word;
    begin_: nk_vec2i;
    end_: nk_vec2i;
    ctrl: array [0..1] of nk_vec2i;
    color: nk_color;
  end;

  nk_command_rect = record
    header: nk_command;
    rounding: Word;
    line_thickness: Word;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  nk_command_rect_filled = record
    header: nk_command;
    rounding: Word;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  nk_command_rect_multi_color = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    left: nk_color;
    top: nk_color;
    bottom: nk_color;
    right: nk_color;
  end;

  nk_command_triangle = record
    header: nk_command;
    line_thickness: Word;
    a: nk_vec2i;
    b: nk_vec2i;
    c: nk_vec2i;
    color: nk_color;
  end;

  nk_command_triangle_filled = record
    header: nk_command;
    a: nk_vec2i;
    b: nk_vec2i;
    c: nk_vec2i;
    color: nk_color;
  end;

  nk_command_circle = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    line_thickness: Word;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  nk_command_circle_filled = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    color: nk_color;
  end;

  nk_command_arc = record
    header: nk_command;
    cx: Smallint;
    cy: Smallint;
    r: Word;
    line_thickness: Word;
    a: array [0..1] of Single;
    color: nk_color;
  end;

  nk_command_arc_filled = record
    header: nk_command;
    cx: Smallint;
    cy: Smallint;
    r: Word;
    a: array [0..1] of Single;
    color: nk_color;
  end;

  nk_command_polygon = record
    header: nk_command;
    color: nk_color;
    line_thickness: Word;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  nk_command_polygon_filled = record
    header: nk_command;
    color: nk_color;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  nk_command_polyline = record
    header: nk_command;
    color: nk_color;
    line_thickness: Word;
    point_count: Word;
    points: array [0..0] of nk_vec2i;
  end;

  nk_command_image = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    img: nk_image;
    col: nk_color;
  end;

  nk_command_custom_callback = procedure(canvas: Pointer; x: Smallint; y: Smallint; w: Word; h: Word; callback_data: nk_handle); cdecl;

  nk_command_custom = record
    header: nk_command;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    callback_data: nk_handle;
    callback: nk_command_custom_callback;
  end;

  nk_command_text = record
    header: nk_command;
    font: Pnk_user_font;
    background: nk_color;
    foreground: nk_color;
    x: Smallint;
    y: Smallint;
    w: Word;
    h: Word;
    height: Single;
    length: Integer;
    string_: array [0..0] of UTF8Char;
  end;

  nk_command_clipping = (
    NK_CLIPPING_OFF = 0,
    NK_CLIPPING_ON = 1);
  Pnk_command_clipping = ^nk_command_clipping;

  nk_command_buffer = record
    base: Pnk_buffer;
    clip: nk_rect;
    use_clipping: Integer;
    userdata: nk_handle;
    begin_: nk_size;
    end_: nk_size;
    last: nk_size;
  end;

  nk_mouse_button = record
    down: nk_bool;
    clicked: Cardinal;
    clicked_pos: nk_vec2;
  end;

  nk_mouse = record
    buttons: array [0..3] of nk_mouse_button;
    pos: nk_vec2;
    prev: nk_vec2;
    delta: nk_vec2;
    scroll_delta: nk_vec2;
    grab: Byte;
    grabbed: Byte;
    ungrab: Byte;
  end;

  nk_key = record
    down: nk_bool;
    clicked: Cardinal;
  end;

  nk_keyboard = record
    keys: array [0..29] of nk_key;
    text: array [0..15] of UTF8Char;
    text_len: Integer;
  end;

  nk_input = record
    keyboard: nk_keyboard;
    mouse: nk_mouse;
  end;

  nk_draw_index = nk_ushort;

  nk_draw_list_stroke = (
    NK_STROKE_OPEN = 0,
    NK_STROKE_CLOSED = 1);
  Pnk_draw_list_stroke = ^nk_draw_list_stroke;

  nk_draw_vertex_layout_attribute = (
    NK_VERTEX_POSITION = 0,
    NK_VERTEX_COLOR = 1,
    NK_VERTEX_TEXCOORD = 2,
    NK_VERTEX_ATTRIBUTE_COUNT = 3);
  Pnk_draw_vertex_layout_attribute = ^nk_draw_vertex_layout_attribute;

  nk_draw_vertex_layout_format = (
    NK_FORMAT_SCHAR = 0,
    NK_FORMAT_SSHORT = 1,
    NK_FORMAT_SINT = 2,
    NK_FORMAT_UCHAR = 3,
    NK_FORMAT_USHORT = 4,
    NK_FORMAT_UINT = 5,
    NK_FORMAT_FLOAT = 6,
    NK_FORMAT_DOUBLE = 7,
    NK_FORMAT_COLOR_BEGIN = 8,
    NK_FORMAT_R8G8B8 = 8,
    NK_FORMAT_R16G15B16 = 9,
    NK_FORMAT_R32G32B32 = 10,
    NK_FORMAT_R8G8B8A8 = 11,
    NK_FORMAT_B8G8R8A8 = 12,
    NK_FORMAT_R16G15B16A16 = 13,
    NK_FORMAT_R32G32B32A32 = 14,
    NK_FORMAT_R32G32B32A32_FLOAT = 15,
    NK_FORMAT_R32G32B32A32_DOUBLE = 16,
    NK_FORMAT_RGB32 = 17,
    NK_FORMAT_RGBA32 = 18,
    NK_FORMAT_COLOR_END = 18,
    NK_FORMAT_COUNT = 19);
  Pnk_draw_vertex_layout_format = ^nk_draw_vertex_layout_format;

  nk_draw_vertex_layout_element = record
    attribute: nk_draw_vertex_layout_attribute;
    format: nk_draw_vertex_layout_format;
    offset: nk_size;
  end;

  nk_draw_command = record
    elem_count: Cardinal;
    clip_rect: nk_rect;
    texture: nk_handle;
  end;

  nk_draw_list = record
    clip_rect: nk_rect;
    circle_vtx: array [0..11] of nk_vec2;
    config: nk_convert_config;
    buffer: Pnk_buffer;
    vertices: Pnk_buffer;
    elements: Pnk_buffer;
    element_count: Cardinal;
    vertex_count: Cardinal;
    cmd_count: Cardinal;
    cmd_offset: nk_size;
    path_count: Cardinal;
    path_offset: Cardinal;
    line_AA: nk_anti_aliasing;
    shape_AA: nk_anti_aliasing;
  end;

  nk_style_item_type = (
    NK_STYLE_ITEM_COLOR = 0,
    NK_STYLE_ITEM_IMAGE = 1,
    NK_STYLE_ITEM_NINE_SLICE = 2);
  Pnk_style_item_type = ^nk_style_item_type;

  nk_style_item_data = record
    case Integer of
      0: (color: nk_color);
      1: (image: nk_image);
      2: (slice: nk_nine_slice);
  end;

  nk_style_item = record
    type_: nk_style_item_type;
    data: nk_style_item_data;
  end;

  nk_style_text = record
    color: nk_color;
    padding: nk_vec2;
  end;

  nk_style_button = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    text_background: nk_color;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    text_alignment: nk_flags;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
    image_padding: nk_vec2;
    touch_padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; userdata: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; userdata: nk_handle); cdecl;
  end;

  nk_style_toggle = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    text_background: nk_color;
    text_alignment: nk_flags;
    padding: nk_vec2;
    touch_padding: nk_vec2;
    spacing: Single;
    border: Single;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_selectable = record
    normal: nk_style_item;
    hover: nk_style_item;
    pressed: nk_style_item;
    normal_active: nk_style_item;
    hover_active: nk_style_item;
    pressed_active: nk_style_item;
    text_normal: nk_color;
    text_hover: nk_color;
    text_pressed: nk_color;
    text_normal_active: nk_color;
    text_hover_active: nk_color;
    text_pressed_active: nk_color;
    text_background: nk_color;
    text_alignment: nk_flags;
    rounding: Single;
    padding: nk_vec2;
    touch_padding: nk_vec2;
    image_padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_slider = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    bar_normal: nk_color;
    bar_hover: nk_color;
    bar_active: nk_color;
    bar_filled: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    border: Single;
    rounding: Single;
    bar_height: Single;
    padding: nk_vec2;
    spacing: nk_vec2;
    cursor_size: nk_vec2;
    show_buttons: Integer;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    inc_symbol: nk_symbol_type;
    dec_symbol: nk_symbol_type;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_progress = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    cursor_border_color: nk_color;
    rounding: Single;
    border: Single;
    cursor_border: Single;
    cursor_rounding: Single;
    padding: nk_vec2;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_scrollbar = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    cursor_normal: nk_style_item;
    cursor_hover: nk_style_item;
    cursor_active: nk_style_item;
    cursor_border_color: nk_color;
    border: Single;
    rounding: Single;
    border_cursor: Single;
    rounding_cursor: Single;
    padding: nk_vec2;
    show_buttons: Integer;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    inc_symbol: nk_symbol_type;
    dec_symbol: nk_symbol_type;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_edit = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    scrollbar: nk_style_scrollbar;
    cursor_normal: nk_color;
    cursor_hover: nk_color;
    cursor_text_normal: nk_color;
    cursor_text_hover: nk_color;
    text_normal: nk_color;
    text_hover: nk_color;
    text_active: nk_color;
    selected_normal: nk_color;
    selected_hover: nk_color;
    selected_text_normal: nk_color;
    selected_text_hover: nk_color;
    border: Single;
    rounding: Single;
    cursor_size: Single;
    scrollbar_size: nk_vec2;
    padding: nk_vec2;
    row_padding: Single;
  end;

  nk_style_property = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    sym_left: nk_symbol_type;
    sym_right: nk_symbol_type;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
    edit: nk_style_edit;
    inc_button: nk_style_button;
    dec_button: nk_style_button;
    userdata: nk_handle;
    draw_begin: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
    draw_end: procedure(p1: Pnk_command_buffer; p2: nk_handle); cdecl;
  end;

  nk_style_chart = record
    background: nk_style_item;
    border_color: nk_color;
    selected_color: nk_color;
    color: nk_color;
    border: Single;
    rounding: Single;
    padding: nk_vec2;
  end;

  nk_style_combo = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    border_color: nk_color;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    symbol_normal: nk_color;
    symbol_hover: nk_color;
    symbol_active: nk_color;
    button: nk_style_button;
    sym_normal: nk_symbol_type;
    sym_hover: nk_symbol_type;
    sym_active: nk_symbol_type;
    border: Single;
    rounding: Single;
    content_padding: nk_vec2;
    button_padding: nk_vec2;
    spacing: nk_vec2;
  end;

  nk_style_tab = record
    background: nk_style_item;
    border_color: nk_color;
    text: nk_color;
    tab_maximize_button: nk_style_button;
    tab_minimize_button: nk_style_button;
    node_maximize_button: nk_style_button;
    node_minimize_button: nk_style_button;
    sym_minimize: nk_symbol_type;
    sym_maximize: nk_symbol_type;
    border: Single;
    rounding: Single;
    indent: Single;
    padding: nk_vec2;
    spacing: nk_vec2;
  end;

  nk_style_header_align = (
    NK_HEADER_LEFT = 0,
    NK_HEADER_RIGHT = 1);
  Pnk_style_header_align = ^nk_style_header_align;

  nk_style_window_header = record
    normal: nk_style_item;
    hover: nk_style_item;
    active: nk_style_item;
    close_button: nk_style_button;
    minimize_button: nk_style_button;
    close_symbol: nk_symbol_type;
    minimize_symbol: nk_symbol_type;
    maximize_symbol: nk_symbol_type;
    label_normal: nk_color;
    label_hover: nk_color;
    label_active: nk_color;
    align: nk_style_header_align;
    padding: nk_vec2;
    label_padding: nk_vec2;
    spacing: nk_vec2;
  end;

  nk_style_window = record
    header: nk_style_window_header;
    fixed_background: nk_style_item;
    background: nk_color;
    border_color: nk_color;
    popup_border_color: nk_color;
    combo_border_color: nk_color;
    contextual_border_color: nk_color;
    menu_border_color: nk_color;
    group_border_color: nk_color;
    tooltip_border_color: nk_color;
    scaler: nk_style_item;
    border: Single;
    combo_border: Single;
    contextual_border: Single;
    menu_border: Single;
    group_border: Single;
    tooltip_border: Single;
    popup_border: Single;
    min_row_height_padding: Single;
    rounding: Single;
    spacing: nk_vec2;
    scrollbar_size: nk_vec2;
    min_size: nk_vec2;
    padding: nk_vec2;
    group_padding: nk_vec2;
    popup_padding: nk_vec2;
    combo_padding: nk_vec2;
    contextual_padding: nk_vec2;
    menu_padding: nk_vec2;
    tooltip_padding: nk_vec2;
  end;

  nk_style = record
    font: Pnk_user_font;
    cursors: array [0..6] of Pnk_cursor;
    cursor_active: Pnk_cursor;
    cursor_last: Pnk_cursor;
    cursor_visible: Integer;
    text: nk_style_text;
    button: nk_style_button;
    contextual_button: nk_style_button;
    menu_button: nk_style_button;
    option: nk_style_toggle;
    checkbox: nk_style_toggle;
    selectable: nk_style_selectable;
    slider: nk_style_slider;
    progress: nk_style_progress;
    property_: nk_style_property;
    edit: nk_style_edit;
    chart: nk_style_chart;
    scrollh: nk_style_scrollbar;
    scrollv: nk_style_scrollbar;
    tab: nk_style_tab;
    combo: nk_style_combo;
    window: nk_style_window;
  end;

  nk_panel_type = (
    NK_PANEL_NONE = 0,
    NK_PANEL_WINDOW = 1,
    NK_PANEL_GROUP = 2,
    NK_PANEL_POPUP = 4,
    NK_PANEL_CONTEXTUAL = 16,
    NK_PANEL_COMBO = 32,
    NK_PANEL_MENU = 64,
    NK_PANEL_TOOLTIP = 128);
  Pnk_panel_type = ^nk_panel_type;

  nk_panel_set = (
    NK_PANEL_SET_NONBLOCK = 240,
    NK_PANEL_SET_POPUP = 244,
    NK_PANEL_SET_SUB = 246);
  Pnk_panel_set = ^nk_panel_set;

  nk_chart_slot = record
    type_: nk_chart_type;
    color: nk_color;
    highlight: nk_color;
    min: Single;
    max: Single;
    range: Single;
    count: Integer;
    last: nk_vec2;
    index: Integer;
  end;

  nk_chart = record
    slot: Integer;
    x: Single;
    y: Single;
    w: Single;
    h: Single;
    slots: array [0..3] of nk_chart_slot;
  end;

  nk_panel_row_layout_type = (
    NK_LAYOUT_DYNAMIC_FIXED = 0,
    NK_LAYOUT_DYNAMIC_ROW = 1,
    NK_LAYOUT_DYNAMIC_FREE = 2,
    NK_LAYOUT_DYNAMIC = 3,
    NK_LAYOUT_STATIC_FIXED = 4,
    NK_LAYOUT_STATIC_ROW = 5,
    NK_LAYOUT_STATIC_FREE = 6,
    NK_LAYOUT_STATIC = 7,
    NK_LAYOUT_TEMPLATE = 8,
    NK_LAYOUT_COUNT = 9);
  Pnk_panel_row_layout_type = ^nk_panel_row_layout_type;

  nk_row_layout = record
    type_: nk_panel_row_layout_type;
    index: Integer;
    height: Single;
    min_height: Single;
    columns: Integer;
    ratio: PSingle;
    item_width: Single;
    item_height: Single;
    item_offset: Single;
    filled: Single;
    item: nk_rect;
    tree_depth: Integer;
    templates: array [0..15] of Single;
  end;

  nk_popup_buffer = record
    begin_: nk_size;
    parent: nk_size;
    last: nk_size;
    end_: nk_size;
    active: nk_bool;
  end;

  nk_menu_state = record
    x: Single;
    y: Single;
    w: Single;
    h: Single;
    offset: nk_scroll;
  end;

  nk_panel = record
    type_: nk_panel_type;
    flags: nk_flags;
    bounds: nk_rect;
    offset_x: Pnk_uint;
    offset_y: Pnk_uint;
    at_x: Single;
    at_y: Single;
    max_x: Single;
    footer_height: Single;
    header_height: Single;
    border: Single;
    has_scrolling: Cardinal;
    clip: nk_rect;
    menu: nk_menu_state;
    row: nk_row_layout;
    chart: nk_chart;
    buffer: Pnk_command_buffer;
    parent: Pnk_panel;
  end;

  nk_window_flags = (
    NK_WINDOW_PRIVATE = 2048,
    NK_WINDOW_DYNAMIC = 2048,
    NK_WINDOW_ROM = 4096,
    NK_WINDOW_NOT_INTERACTIVE = 5120,
    NK_WINDOW_HIDDEN = 8192,
    NK_WINDOW_CLOSED = 16384,
    NK_WINDOW_MINIMIZED = 32768,
    NK_WINDOW_REMOVE_ROM = 65536);
  Pnk_window_flags = ^nk_window_flags;

  nk_popup_state = record
    win: Pnk_window;
    type_: nk_panel_type;
    buf: nk_popup_buffer;
    name: nk_hash;
    active: nk_bool;
    combo_count: Cardinal;
    con_count: Cardinal;
    con_old: Cardinal;
    active_con: Cardinal;
    header: nk_rect;
  end;

  nk_edit_state = record
    name: nk_hash;
    seq: Cardinal;
    old: Cardinal;
    active: Integer;
    prev: Integer;
    cursor: Integer;
    sel_start: Integer;
    sel_end: Integer;
    scrollbar: nk_scroll;
    mode: Byte;
    single_line: Byte;
  end;

  nk_property_state = record
    active: Integer;
    prev: Integer;
    buffer: array [0..63] of UTF8Char;
    length: Integer;
    cursor: Integer;
    select_start: Integer;
    select_end: Integer;
    name: nk_hash;
    seq: Cardinal;
    old: Cardinal;
    state: Integer;
  end;

  nk_window = record
    seq: Cardinal;
    name: nk_hash;
    name_string: array [0..63] of UTF8Char;
    flags: nk_flags;
    bounds: nk_rect;
    scrollbar: nk_scroll;
    buffer: nk_command_buffer;
    layout: Pnk_panel;
    scrollbar_hiding_timer: Single;
    property_: nk_property_state;
    popup: nk_popup_state;
    edit: nk_edit_state;
    scrolled: Cardinal;
    tables: Pnk_table;
    table_count: Cardinal;
    next: Pnk_window;
    prev: Pnk_window;
    parent: Pnk_window;
  end;

  nk_config_stack_style_item_element = record
    address: Pnk_style_item;
    old_value: nk_style_item;
  end;

  nk_config_stack_float_element = record
    address: PSingle;
    old_value: Single;
  end;

  nk_config_stack_vec2_element = record
    address: Pnk_vec2;
    old_value: nk_vec2;
  end;

  nk_config_stack_flags_element = record
    address: Pnk_flags;
    old_value: nk_flags;
  end;

  nk_config_stack_color_element = record
    address: Pnk_color;
    old_value: nk_color;
  end;

  nk_config_stack_user_font_element = record
    address: PPnk_user_font;
    old_value: Pnk_user_font;
  end;

  nk_config_stack_button_behavior_element = record
    address: Pnk_button_behavior;
    old_value: nk_button_behavior;
  end;

  nk_config_stack_style_item = record
    head: Integer;
    elements: array [0..15] of nk_config_stack_style_item_element;
  end;

  nk_config_stack_float = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_float_element;
  end;

  nk_config_stack_vec2 = record
    head: Integer;
    elements: array [0..15] of nk_config_stack_vec2_element;
  end;

  nk_config_stack_flags = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_flags_element;
  end;

  nk_config_stack_color = record
    head: Integer;
    elements: array [0..31] of nk_config_stack_color_element;
  end;

  nk_config_stack_user_font = record
    head: Integer;
    elements: array [0..7] of nk_config_stack_user_font_element;
  end;

  nk_config_stack_button_behavior = record
    head: Integer;
    elements: array [0..7] of nk_config_stack_button_behavior_element;
  end;

  nk_configuration_stacks = record
    style_items: nk_config_stack_style_item;
    floats: nk_config_stack_float;
    vectors: nk_config_stack_vec2;
    flags: nk_config_stack_flags;
    colors: nk_config_stack_color;
    fonts: nk_config_stack_user_font;
    button_behaviors: nk_config_stack_button_behavior;
  end;

  nk_table = record
    seq: Cardinal;
    size: Cardinal;
    keys: array [0..58] of nk_hash;
    values: array [0..58] of nk_uint;
    next: Pnk_table;
    prev: Pnk_table;
  end;

  nk_page_data = record
    case Integer of
      0: (tbl: nk_table);
      1: (pan: nk_panel);
      2: (win: nk_window);
  end;

  nk_page_element = record
    data: nk_page_data;
    next: Pnk_page_element;
    prev: Pnk_page_element;
  end;

  nk_page = record
    size: Cardinal;
    next: Pnk_page;
    win: array [0..0] of nk_page_element;
  end;

  nk_pool = record
    alloc: nk_allocator;
    type_: nk_allocation_type;
    page_count: Cardinal;
    pages: Pnk_page;
    freelist: Pnk_page_element;
    capacity: Cardinal;
    size: nk_size;
    cap: nk_size;
  end;

  nk_context = record
    input: nk_input;
    style: nk_style;
    memory: nk_buffer;
    clip: nk_clipboard;
    last_widget_state: nk_flags;
    button_behavior: nk_button_behavior;
    stacks: nk_configuration_stacks;
    delta_time_seconds: Single;
    draw_list: nk_draw_list;
    text_edit: nk_text_edit;
    overlay: nk_command_buffer;
    build: Integer;
    use_pool: Integer;
    pool: nk_pool;
    begin_: Pnk_window;
    end_: Pnk_window;
    active: Pnk_window;
    current: Pnk_window;
    freelist: Pnk_page_element;
    count: Cardinal;
    seq: Cardinal;
  end;

  ma_int8 = UTF8Char;
  ma_uint8 = Byte;
  Pma_uint8 = ^ma_uint8;
  ma_int16 = Smallint;
  Pma_int16 = ^ma_int16;
  ma_uint16 = Word;
  ma_int32 = Integer;
  Pma_int32 = ^ma_int32;
  PPma_int32 = ^Pma_int32;
  ma_uint32 = Cardinal;
  Pma_uint32 = ^ma_uint32;
  ma_int64 = Int64;
  Pma_int64 = ^ma_int64;
  ma_uint64 = UInt64;
  Pma_uint64 = ^ma_uint64;
  ma_uintptr = ma_uint64;
  ma_bool8 = ma_uint8;
  ma_bool32 = ma_uint32;
  ma_handle = Pointer;
  ma_ptr = Pointer;
  Pma_ptr = ^ma_ptr;

  ma_proc = procedure(); cdecl;

  ma_log_level = (
    MA_LOG_LEVEL_DEBUG = 4,
    MA_LOG_LEVEL_INFO = 3,
    MA_LOG_LEVEL_WARNING = 2,
    MA_LOG_LEVEL_ERROR = 1);
  Pma_log_level = ^ma_log_level;
  ma_channel = ma_uint8;
  Pma_channel = ^ma_channel;

  _ma_channel_position = (
    MA_CHANNEL_NONE = 0,
    MA_CHANNEL_MONO = 1,
    MA_CHANNEL_FRONT_LEFT = 2,
    MA_CHANNEL_FRONT_RIGHT = 3,
    MA_CHANNEL_FRONT_CENTER = 4,
    MA_CHANNEL_LFE = 5,
    MA_CHANNEL_BACK_LEFT = 6,
    MA_CHANNEL_BACK_RIGHT = 7,
    MA_CHANNEL_FRONT_LEFT_CENTER = 8,
    MA_CHANNEL_FRONT_RIGHT_CENTER = 9,
    MA_CHANNEL_BACK_CENTER = 10,
    MA_CHANNEL_SIDE_LEFT = 11,
    MA_CHANNEL_SIDE_RIGHT = 12,
    MA_CHANNEL_TOP_CENTER = 13,
    MA_CHANNEL_TOP_FRONT_LEFT = 14,
    MA_CHANNEL_TOP_FRONT_CENTER = 15,
    MA_CHANNEL_TOP_FRONT_RIGHT = 16,
    MA_CHANNEL_TOP_BACK_LEFT = 17,
    MA_CHANNEL_TOP_BACK_CENTER = 18,
    MA_CHANNEL_TOP_BACK_RIGHT = 19,
    MA_CHANNEL_AUX_0 = 20,
    MA_CHANNEL_AUX_1 = 21,
    MA_CHANNEL_AUX_2 = 22,
    MA_CHANNEL_AUX_3 = 23,
    MA_CHANNEL_AUX_4 = 24,
    MA_CHANNEL_AUX_5 = 25,
    MA_CHANNEL_AUX_6 = 26,
    MA_CHANNEL_AUX_7 = 27,
    MA_CHANNEL_AUX_8 = 28,
    MA_CHANNEL_AUX_9 = 29,
    MA_CHANNEL_AUX_10 = 30,
    MA_CHANNEL_AUX_11 = 31,
    MA_CHANNEL_AUX_12 = 32,
    MA_CHANNEL_AUX_13 = 33,
    MA_CHANNEL_AUX_14 = 34,
    MA_CHANNEL_AUX_15 = 35,
    MA_CHANNEL_AUX_16 = 36,
    MA_CHANNEL_AUX_17 = 37,
    MA_CHANNEL_AUX_18 = 38,
    MA_CHANNEL_AUX_19 = 39,
    MA_CHANNEL_AUX_20 = 40,
    MA_CHANNEL_AUX_21 = 41,
    MA_CHANNEL_AUX_22 = 42,
    MA_CHANNEL_AUX_23 = 43,
    MA_CHANNEL_AUX_24 = 44,
    MA_CHANNEL_AUX_25 = 45,
    MA_CHANNEL_AUX_26 = 46,
    MA_CHANNEL_AUX_27 = 47,
    MA_CHANNEL_AUX_28 = 48,
    MA_CHANNEL_AUX_29 = 49,
    MA_CHANNEL_AUX_30 = 50,
    MA_CHANNEL_AUX_31 = 51,
    MA_CHANNEL_LEFT = 2,
    MA_CHANNEL_RIGHT = 3,
    MA_CHANNEL_POSITION_COUNT = 52);
  P_ma_channel_position = ^_ma_channel_position;

  ma_result = (
    MA_SUCCESS = 0,
    MA_ERROR = -1,
    MA_INVALID_ARGS = -2,
    MA_INVALID_OPERATION = -3,
    MA_OUT_OF_MEMORY = -4,
    MA_OUT_OF_RANGE = -5,
    MA_ACCESS_DENIED = -6,
    MA_DOES_NOT_EXIST = -7,
    MA_ALREADY_EXISTS = -8,
    MA_TOO_MANY_OPEN_FILES = -9,
    MA_INVALID_FILE = -10,
    MA_TOO_BIG = -11,
    MA_PATH_TOO_LONG = -12,
    MA_NAME_TOO_LONG = -13,
    MA_NOT_DIRECTORY = -14,
    MA_IS_DIRECTORY = -15,
    MA_DIRECTORY_NOT_EMPTY = -16,
    MA_AT_END = -17,
    MA_NO_SPACE = -18,
    MA_BUSY = -19,
    MA_IO_ERROR = -20,
    MA_INTERRUPT = -21,
    MA_UNAVAILABLE = -22,
    MA_ALREADY_IN_USE = -23,
    MA_BAD_ADDRESS = -24,
    MA_BAD_SEEK = -25,
    MA_BAD_PIPE = -26,
    MA_DEADLOCK = -27,
    MA_TOO_MANY_LINKS = -28,
    MA_NOT_IMPLEMENTED = -29,
    MA_NO_MESSAGE = -30,
    MA_BAD_MESSAGE = -31,
    MA_NO_DATA_AVAILABLE = -32,
    MA_INVALID_DATA = -33,
    MA_TIMEOUT = -34,
    MA_NO_NETWORK = -35,
    MA_NOT_UNIQUE = -36,
    MA_NOT_SOCKET = -37,
    MA_NO_ADDRESS = -38,
    MA_BAD_PROTOCOL = -39,
    MA_PROTOCOL_UNAVAILABLE = -40,
    MA_PROTOCOL_NOT_SUPPORTED = -41,
    MA_PROTOCOL_FAMILY_NOT_SUPPORTED = -42,
    MA_ADDRESS_FAMILY_NOT_SUPPORTED = -43,
    MA_SOCKET_NOT_SUPPORTED = -44,
    MA_CONNECTION_RESET = -45,
    MA_ALREADY_CONNECTED = -46,
    MA_NOT_CONNECTED = -47,
    MA_CONNECTION_REFUSED = -48,
    MA_NO_HOST = -49,
    MA_IN_PROGRESS = -50,
    MA_CANCELLED = -51,
    MA_MEMORY_ALREADY_MAPPED = -52,
    MA_FORMAT_NOT_SUPPORTED = -100,
    MA_DEVICE_TYPE_NOT_SUPPORTED = -101,
    MA_SHARE_MODE_NOT_SUPPORTED = -102,
    MA_NO_BACKEND = -103,
    MA_NO_DEVICE = -104,
    MA_API_NOT_FOUND = -105,
    MA_INVALID_DEVICE_CONFIG = -106,
    MA_LOOP = -107,
    MA_DEVICE_NOT_INITIALIZED = -200,
    MA_DEVICE_ALREADY_INITIALIZED = -201,
    MA_DEVICE_NOT_STARTED = -202,
    MA_DEVICE_NOT_STOPPED = -203,
    MA_FAILED_TO_INIT_BACKEND = -300,
    MA_FAILED_TO_OPEN_BACKEND_DEVICE = -301,
    MA_FAILED_TO_START_BACKEND_DEVICE = -302,
    MA_FAILED_TO_STOP_BACKEND_DEVICE = -303);
  Pma_result = ^ma_result;

  ma_stream_format = (
    ma_stream_format_pcm = 0);
  Pma_stream_format = ^ma_stream_format;

  ma_stream_layout = (
    ma_stream_layout_interleaved = 0,
    ma_stream_layout_deinterleaved = 1);
  Pma_stream_layout = ^ma_stream_layout;

  ma_dither_mode = (
    ma_dither_mode_none = 0,
    ma_dither_mode_rectangle = 1,
    ma_dither_mode_triangle = 2);
  Pma_dither_mode = ^ma_dither_mode;

  ma_format = (
    ma_format_unknown = 0,
    ma_format_u8 = 1,
    ma_format_s16 = 2,
    ma_format_s24 = 3,
    ma_format_s32 = 4,
    ma_format_f32 = 5,
    ma_format_count = 6);
  Pma_format = ^ma_format;

  ma_standard_sample_rate = (
    ma_standard_sample_rate_48000 = 48000,
    ma_standard_sample_rate_44100 = 44100,
    ma_standard_sample_rate_32000 = 32000,
    ma_standard_sample_rate_24000 = 24000,
    ma_standard_sample_rate_22050 = 22050,
    ma_standard_sample_rate_88200 = 88200,
    ma_standard_sample_rate_96000 = 96000,
    ma_standard_sample_rate_176400 = 176400,
    ma_standard_sample_rate_192000 = 192000,
    ma_standard_sample_rate_16000 = 16000,
    ma_standard_sample_rate_11025 = 11250,
    ma_standard_sample_rate_8000 = 8000,
    ma_standard_sample_rate_352800 = 352800,
    ma_standard_sample_rate_384000 = 384000,
    ma_standard_sample_rate_min = 8000,
    ma_standard_sample_rate_max = 384000,
    ma_standard_sample_rate_count = 14);
  Pma_standard_sample_rate = ^ma_standard_sample_rate;

  ma_channel_mix_mode = (
    ma_channel_mix_mode_rectangular = 0,
    ma_channel_mix_mode_simple = 1,
    ma_channel_mix_mode_custom_weights = 2,
    ma_channel_mix_mode_default = 0);
  Pma_channel_mix_mode = ^ma_channel_mix_mode;

  ma_standard_channel_map = (
    ma_standard_channel_map_microsoft = 0,
    ma_standard_channel_map_alsa = 1,
    ma_standard_channel_map_rfc3551 = 2,
    ma_standard_channel_map_flac = 3,
    ma_standard_channel_map_vorbis = 4,
    ma_standard_channel_map_sound4 = 5,
    ma_standard_channel_map_sndio = 6,
    ma_standard_channel_map_webaudio = 3,
    ma_standard_channel_map_default = 0);
  Pma_standard_channel_map = ^ma_standard_channel_map;

  ma_performance_profile = (
    ma_performance_profile_low_latency = 0,
    ma_performance_profile_conservative = 1);
  Pma_performance_profile = ^ma_performance_profile;

  ma_allocation_callbacks = record
    pUserData: Pointer;
    onMalloc: function(sz: NativeUInt; pUserData: Pointer): Pointer; cdecl;
    onRealloc: function(p: Pointer; sz: NativeUInt; pUserData: Pointer): Pointer; cdecl;
    onFree: procedure(p: Pointer; pUserData: Pointer); cdecl;
  end;

  ma_lcg = record
    state: ma_int32;
  end;

  ma_spinlock = ma_uint32;
  Pma_spinlock = ^ma_spinlock;

  ma_thread_priority = (
    ma_thread_priority_idle = -5,
    ma_thread_priority_lowest = -4,
    ma_thread_priority_low = -3,
    ma_thread_priority_normal = -2,
    ma_thread_priority_high = -1,
    ma_thread_priority_highest = 0,
    ma_thread_priority_realtime = 1,
    ma_thread_priority_default = 0);
  Pma_thread_priority = ^ma_thread_priority;
  ma_thread = ma_handle;
  ma_mutex = ma_handle;
  Pma_mutex = ^ma_mutex;
  ma_event = ma_handle;
  Pma_event = ^ma_event;
  ma_semaphore = ma_handle;

  ma_log_callback_proc = procedure(pUserData: Pointer; level: ma_uint32; const pMessage: PUTF8Char); cdecl;

  ma_log_callback = record
    onLog: ma_log_callback_proc;
    pUserData: Pointer;
  end;

  ma_log = record
    callbacks: array [0..3] of ma_log_callback;
    callbackCount: ma_uint32;
    allocationCallbacks: ma_allocation_callbacks;
    lock: ma_mutex;
  end;

  Pma_biquad_coefficient = ^ma_biquad_coefficient;
  ma_biquad_coefficient = record
    case Integer of
      0: (f32: Single);
      1: (s32: ma_int32);
  end;

  ma_biquad_config = record
    format: ma_format;
    channels: ma_uint32;
    b0: Double;
    b1: Double;
    b2: Double;
    a0: Double;
    a1: Double;
    a2: Double;
  end;

  ma_biquad = record
    format: ma_format;
    channels: ma_uint32;
    b0: ma_biquad_coefficient;
    b1: ma_biquad_coefficient;
    b2: ma_biquad_coefficient;
    a1: ma_biquad_coefficient;
    a2: ma_biquad_coefficient;
    pR1: Pma_biquad_coefficient;
    pR2: Pma_biquad_coefficient;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_lpf1_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    q: Double;
  end;

  ma_lpf2_config = ma_lpf1_config;
  Pma_lpf2_config = ^ma_lpf2_config;

  ma_lpf1 = record
    format: ma_format;
    channels: ma_uint32;
    a: ma_biquad_coefficient;
    pR1: Pma_biquad_coefficient;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_lpf2 = record
    bq: ma_biquad;
  end;

  ma_lpf_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    order: ma_uint32;
  end;

  ma_lpf = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    lpf1Count: ma_uint32;
    lpf2Count: ma_uint32;
    pLPF1: Pma_lpf1;
    pLPF2: Pma_lpf2;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_hpf1_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    q: Double;
  end;

  ma_hpf2_config = ma_hpf1_config;
  Pma_hpf2_config = ^ma_hpf2_config;

  ma_hpf1 = record
    format: ma_format;
    channels: ma_uint32;
    a: ma_biquad_coefficient;
    pR1: Pma_biquad_coefficient;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_hpf2 = record
    bq: ma_biquad;
  end;

  ma_hpf_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    order: ma_uint32;
  end;

  ma_hpf = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    hpf1Count: ma_uint32;
    hpf2Count: ma_uint32;
    pHPF1: Pma_hpf1;
    pHPF2: Pma_hpf2;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_bpf2_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    q: Double;
  end;

  ma_bpf2 = record
    bq: ma_biquad;
  end;

  ma_bpf_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cutoffFrequency: Double;
    order: ma_uint32;
  end;

  ma_bpf = record
    format: ma_format;
    channels: ma_uint32;
    bpf2Count: ma_uint32;
    pBPF2: Pma_bpf2;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_notch2_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    q: Double;
    frequency: Double;
  end;

  ma_notch_config = ma_notch2_config;
  Pma_notch_config = ^ma_notch_config;

  ma_notch2 = record
    bq: ma_biquad;
  end;

  ma_peak2_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    gainDB: Double;
    q: Double;
    frequency: Double;
  end;

  ma_peak_config = ma_peak2_config;
  Pma_peak_config = ^ma_peak_config;

  ma_peak2 = record
    bq: ma_biquad;
  end;

  ma_loshelf2_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    gainDB: Double;
    shelfSlope: Double;
    frequency: Double;
  end;

  ma_loshelf_config = ma_loshelf2_config;
  Pma_loshelf_config = ^ma_loshelf_config;

  ma_loshelf2 = record
    bq: ma_biquad;
  end;

  ma_hishelf2_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    gainDB: Double;
    shelfSlope: Double;
    frequency: Double;
  end;

  ma_hishelf_config = ma_hishelf2_config;
  Pma_hishelf_config = ^ma_hishelf_config;

  ma_hishelf2 = record
    bq: ma_biquad;
  end;

  ma_delay_config = record
    channels: ma_uint32;
    sampleRate: ma_uint32;
    delayInFrames: ma_uint32;
    delayStart: ma_bool32;
    wet: Single;
    dry: Single;
    decay: Single;
  end;

  ma_delay = record
    config: ma_delay_config;
    cursor: ma_uint32;
    bufferSizeInFrames: ma_uint32;
    pBuffer: PSingle;
  end;

  ma_gainer_config = record
    channels: ma_uint32;
    smoothTimeInFrames: ma_uint32;
  end;

  ma_gainer = record
    config: ma_gainer_config;
    t: ma_uint32;
    pOldGains: PSingle;
    pNewGains: PSingle;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_pan_mode = (
    ma_pan_mode_balance = 0,
    ma_pan_mode_pan = 1);
  Pma_pan_mode = ^ma_pan_mode;

  ma_panner_config = record
    format: ma_format;
    channels: ma_uint32;
    mode: ma_pan_mode;
    pan: Single;
  end;

  ma_panner = record
    format: ma_format;
    channels: ma_uint32;
    mode: ma_pan_mode;
    pan: Single;
  end;

  ma_fader_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
  end;

  ma_fader = record
    config: ma_fader_config;
    volumeBeg: Single;
    volumeEnd: Single;
    lengthInFrames: ma_uint64;
    cursorInFrames: ma_uint64;
  end;

  ma_vec3f = record
    x: Single;
    y: Single;
    z: Single;
  end;

  ma_attenuation_model = (
    ma_attenuation_model_none = 0,
    ma_attenuation_model_inverse = 1,
    ma_attenuation_model_linear = 2,
    ma_attenuation_model_exponential = 3);
  Pma_attenuation_model = ^ma_attenuation_model;

  ma_positioning = (
    ma_positioning_absolute = 0,
    ma_positioning_relative = 1);
  Pma_positioning = ^ma_positioning;

  ma_handedness = (
    ma_handedness_right = 0,
    ma_handedness_left = 1);
  Pma_handedness = ^ma_handedness;

  ma_spatializer_listener_config = record
    channelsOut: ma_uint32;
    pChannelMapOut: Pma_channel;
    handedness: ma_handedness;
    coneInnerAngleInRadians: Single;
    coneOuterAngleInRadians: Single;
    coneOuterGain: Single;
    speedOfSound: Single;
    worldUp: ma_vec3f;
  end;

  ma_spatializer_listener = record
    config: ma_spatializer_listener_config;
    position: ma_vec3f;
    direction: ma_vec3f;
    velocity: ma_vec3f;
    isEnabled: ma_bool32;
    _ownsHeap: ma_bool32;
    _pHeap: Pointer;
  end;

  ma_spatializer_config = record
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    pChannelMapIn: Pma_channel;
    attenuationModel: ma_attenuation_model;
    positioning: ma_positioning;
    handedness: ma_handedness;
    minGain: Single;
    maxGain: Single;
    minDistance: Single;
    maxDistance: Single;
    rolloff: Single;
    coneInnerAngleInRadians: Single;
    coneOuterAngleInRadians: Single;
    coneOuterGain: Single;
    dopplerFactor: Single;
    directionalAttenuationFactor: Single;
    gainSmoothTimeInFrames: ma_uint32;
  end;

  ma_spatializer = record
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    pChannelMapIn: Pma_channel;
    attenuationModel: ma_attenuation_model;
    positioning: ma_positioning;
    handedness: ma_handedness;
    minGain: Single;
    maxGain: Single;
    minDistance: Single;
    maxDistance: Single;
    rolloff: Single;
    coneInnerAngleInRadians: Single;
    coneOuterAngleInRadians: Single;
    coneOuterGain: Single;
    dopplerFactor: Single;
    directionalAttenuationFactor: Single;
    gainSmoothTimeInFrames: ma_uint32;
    position: ma_vec3f;
    direction: ma_vec3f;
    velocity: ma_vec3f;
    dopplerPitch: Single;
    gainer: ma_gainer;
    pNewChannelGainsOut: PSingle;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_linear_resampler_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRateIn: ma_uint32;
    sampleRateOut: ma_uint32;
    lpfOrder: ma_uint32;
    lpfNyquistFactor: Double;
  end;

  P_anonymous_type_18 = ^_anonymous_type_18;
  _anonymous_type_18 = record
    case Integer of
      0: (f32: PSingle);
      1: (s16: Pma_int16);
  end;

  P_anonymous_type_19 = ^_anonymous_type_19;
  _anonymous_type_19 = record
    case Integer of
      0: (f32: PSingle);
      1: (s16: Pma_int16);
  end;

  ma_linear_resampler = record
    config: ma_linear_resampler_config;
    inAdvanceInt: ma_uint32;
    inAdvanceFrac: ma_uint32;
    inTimeInt: ma_uint32;
    inTimeFrac: ma_uint32;
    x0: _anonymous_type_18;
    x1: _anonymous_type_19;
    lpf: ma_lpf;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  Pma_resampling_backend = Pointer;
  PPma_resampling_backend = ^Pma_resampling_backend;

  ma_resampling_backend_vtable = record
    onGetHeapSize: function(pUserData: Pointer; const pConfig: Pma_resampler_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
    onInit: function(pUserData: Pointer; const pConfig: Pma_resampler_config; pHeap: Pointer; ppBackend: PPma_resampling_backend): ma_result; cdecl;
    onUninit: procedure(pUserData: Pointer; pBackend: Pma_resampling_backend; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
    onProcess: function(pUserData: Pointer; pBackend: Pma_resampling_backend; const pFramesIn: Pointer; pFrameCountIn: Pma_uint64; pFramesOut: Pointer; pFrameCountOut: Pma_uint64): ma_result; cdecl;
    onSetRate: function(pUserData: Pointer; pBackend: Pma_resampling_backend; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_result; cdecl;
    onGetInputLatency: function(pUserData: Pointer; const pBackend: Pma_resampling_backend): ma_uint64; cdecl;
    onGetOutputLatency: function(pUserData: Pointer; const pBackend: Pma_resampling_backend): ma_uint64; cdecl;
    onGetRequiredInputFrameCount: function(pUserData: Pointer; const pBackend: Pma_resampling_backend; outputFrameCount: ma_uint64; pInputFrameCount: Pma_uint64): ma_result; cdecl;
    onGetExpectedOutputFrameCount: function(pUserData: Pointer; const pBackend: Pma_resampling_backend; inputFrameCount: ma_uint64; pOutputFrameCount: Pma_uint64): ma_result; cdecl;
    onReset: function(pUserData: Pointer; pBackend: Pma_resampling_backend): ma_result; cdecl;
  end;

  ma_resample_algorithm = (
    ma_resample_algorithm_linear = 0,
    ma_resample_algorithm_custom = 1);
  Pma_resample_algorithm = ^ma_resample_algorithm;

  P_anonymous_type_20 = ^_anonymous_type_20;
  _anonymous_type_20 = record
    lpfOrder: ma_uint32;
  end;

  ma_resampler_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRateIn: ma_uint32;
    sampleRateOut: ma_uint32;
    algorithm: ma_resample_algorithm;
    pBackendVTable: Pma_resampling_backend_vtable;
    pBackendUserData: Pointer;
    linear: _anonymous_type_20;
  end;

  P_anonymous_type_21 = ^_anonymous_type_21;
  _anonymous_type_21 = record
    case Integer of
      0: (linear: ma_linear_resampler);
  end;

  ma_resampler = record
    pBackend: Pma_resampling_backend;
    pBackendVTable: Pma_resampling_backend_vtable;
    pBackendUserData: Pointer;
    format: ma_format;
    channels: ma_uint32;
    sampleRateIn: ma_uint32;
    sampleRateOut: ma_uint32;
    state: _anonymous_type_21;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_channel_conversion_path = (
    ma_channel_conversion_path_unknown = 0,
    ma_channel_conversion_path_passthrough = 1,
    ma_channel_conversion_path_mono_out = 2,
    ma_channel_conversion_path_mono_in = 3,
    ma_channel_conversion_path_shuffle = 4,
    ma_channel_conversion_path_weights = 5);
  Pma_channel_conversion_path = ^ma_channel_conversion_path;

  ma_mono_expansion_mode = (
    ma_mono_expansion_mode_duplicate = 0,
    ma_mono_expansion_mode_average = 1,
    ma_mono_expansion_mode_stereo_only = 2,
    ma_mono_expansion_mode_default = 0);
  Pma_mono_expansion_mode = ^ma_mono_expansion_mode;

  ma_channel_converter_config = record
    format: ma_format;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    pChannelMapIn: Pma_channel;
    pChannelMapOut: Pma_channel;
    mixingMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    ppWeights: PPSingle;
  end;

  P_anonymous_type_22 = ^_anonymous_type_22;
  _anonymous_type_22 = record
    case Integer of
      0: (f32: PPSingle);
      1: (s16: PPma_int32);
  end;

  ma_channel_converter = record
    format: ma_format;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    mixingMode: ma_channel_mix_mode;
    conversionPath: ma_channel_conversion_path;
    pChannelMapIn: Pma_channel;
    pChannelMapOut: Pma_channel;
    pShuffleTable: Pma_uint8;
    weights: _anonymous_type_22;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_data_converter_config = record
    formatIn: ma_format;
    formatOut: ma_format;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    sampleRateIn: ma_uint32;
    sampleRateOut: ma_uint32;
    pChannelMapIn: Pma_channel;
    pChannelMapOut: Pma_channel;
    ditherMode: ma_dither_mode;
    channelMixMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    ppChannelWeights: PPSingle;
    allowDynamicSampleRate: ma_bool32;
    resampling: ma_resampler_config;
  end;

  ma_data_converter_execution_path = (
    ma_data_converter_execution_path_passthrough = 0,
    ma_data_converter_execution_path_format_only = 1,
    ma_data_converter_execution_path_channels_only = 2,
    ma_data_converter_execution_path_resample_only = 3,
    ma_data_converter_execution_path_resample_first = 4,
    ma_data_converter_execution_path_channels_first = 5);
  Pma_data_converter_execution_path = ^ma_data_converter_execution_path;

  ma_data_converter = record
    formatIn: ma_format;
    formatOut: ma_format;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    sampleRateIn: ma_uint32;
    sampleRateOut: ma_uint32;
    ditherMode: ma_dither_mode;
    executionPath: ma_data_converter_execution_path;
    channelConverter: ma_channel_converter;
    resampler: ma_resampler;
    hasPreFormatConversion: ma_bool8;
    hasPostFormatConversion: ma_bool8;
    hasChannelConverter: ma_bool8;
    hasResampler: ma_bool8;
    isPassthrough: ma_bool8;
    _ownsHeap: ma_bool8;
    _pHeap: Pointer;
  end;

  ma_rb = record
    pBuffer: Pointer;
    subbufferSizeInBytes: ma_uint32;
    subbufferCount: ma_uint32;
    subbufferStrideInBytes: ma_uint32;
    encodedReadOffset: ma_uint32;
    encodedWriteOffset: ma_uint32;
    ownsBuffer: ma_bool8;
    clearOnWriteAcquire: ma_bool8;
    allocationCallbacks: ma_allocation_callbacks;
  end;

  ma_pcm_rb = record
    rb: ma_rb;
    format: ma_format;
    channels: ma_uint32;
  end;

  ma_duplex_rb = record
    rb: ma_pcm_rb;
  end;

  ma_fence = record
    e: ma_event;
    counter: ma_uint32;
  end;

  Pma_async_notification = Pointer;
  PPma_async_notification = ^Pma_async_notification;

  ma_async_notification_callbacks = record
    onSignal: procedure(pNotification: Pma_async_notification); cdecl;
  end;

  ma_async_notification_poll = record
    cb: ma_async_notification_callbacks;
    signalled: ma_bool32;
  end;

  ma_async_notification_event = record
    cb: ma_async_notification_callbacks;
    e: ma_event;
  end;

  ma_slot_allocator_config = record
    capacity: ma_uint32;
  end;

  ma_slot_allocator_group = record
    bitfield: ma_uint32;
  end;

  ma_slot_allocator = record
    pGroups: Pma_slot_allocator_group;
    pSlots: Pma_uint32;
    count: ma_uint32;
    capacity: ma_uint32;
    _ownsHeap: ma_bool32;
    _pHeap: Pointer;
  end;

  ma_job_proc = function(pJob: Pma_job): ma_result; cdecl;

  ma_job_type = (
    MA_JOB_TYPE_QUIT = 0,
    MA_JOB_TYPE_CUSTOM = 1,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE = 2,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE = 3,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE = 4,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER = 5,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER = 6,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM = 7,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM = 8,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_STREAM = 9,
    MA_JOB_TYPE_RESOURCE_MANAGER_SEEK_DATA_STREAM = 10,
    MA_JOB_TYPE_DEVICE_AAUDIO_REROUTE = 11,
    MA_JOB_TYPE_COUNT = 12);
  Pma_job_type = ^ma_job_type;

  P_anonymous_type_23 = ^_anonymous_type_23;
  _anonymous_type_23 = record
    code: ma_uint16;
    slot: ma_uint16;
    refcount: ma_uint32;
  end;

  P_anonymous_type_24 = ^_anonymous_type_24;
  _anonymous_type_24 = record
    case Integer of
      0: (breakup: _anonymous_type_23);
      1: (allocation: ma_uint64);
  end;

  P_anonymous_type_25 = ^_anonymous_type_25;
  _anonymous_type_25 = record
    proc: ma_job_proc;
    data0: ma_uintptr;
    data1: ma_uintptr;
  end;

  P_anonymous_type_26 = ^_anonymous_type_26;
  _anonymous_type_26 = record
    pResourceManager: Pointer;
    pDataBufferNode: Pointer;
    pFilePath: PUTF8Char;
    pFilePathW: PWideChar;
    flags: ma_uint32;
    pInitNotification: Pma_async_notification;
    pDoneNotification: Pma_async_notification;
    pInitFence: Pma_fence;
    pDoneFence: Pma_fence;
  end;

  P_anonymous_type_27 = ^_anonymous_type_27;
  _anonymous_type_27 = record
    pResourceManager: Pointer;
    pDataBufferNode: Pointer;
    pDoneNotification: Pma_async_notification;
    pDoneFence: Pma_fence;
  end;

  P_anonymous_type_28 = ^_anonymous_type_28;
  _anonymous_type_28 = record
    pResourceManager: Pointer;
    pDataBufferNode: Pointer;
    pDecoder: Pointer;
    pDoneNotification: Pma_async_notification;
    pDoneFence: Pma_fence;
  end;

  P_anonymous_type_29 = ^_anonymous_type_29;
  _anonymous_type_29 = record
    pDataBuffer: Pointer;
    pInitNotification: Pma_async_notification;
    pDoneNotification: Pma_async_notification;
    pInitFence: Pma_fence;
    pDoneFence: Pma_fence;
    rangeBegInPCMFrames: ma_uint64;
    rangeEndInPCMFrames: ma_uint64;
    loopPointBegInPCMFrames: ma_uint64;
    loopPointEndInPCMFrames: ma_uint64;
    isLooping: ma_uint32;
  end;

  P_anonymous_type_30 = ^_anonymous_type_30;
  _anonymous_type_30 = record
    pDataBuffer: Pointer;
    pDoneNotification: Pma_async_notification;
    pDoneFence: Pma_fence;
  end;

  P_anonymous_type_31 = ^_anonymous_type_31;
  _anonymous_type_31 = record
    pDataStream: Pointer;
    pFilePath: PUTF8Char;
    pFilePathW: PWideChar;
    initialSeekPoint: ma_uint64;
    pInitNotification: Pma_async_notification;
    pInitFence: Pma_fence;
  end;

  P_anonymous_type_32 = ^_anonymous_type_32;
  _anonymous_type_32 = record
    pDataStream: Pointer;
    pDoneNotification: Pma_async_notification;
    pDoneFence: Pma_fence;
  end;

  P_anonymous_type_33 = ^_anonymous_type_33;
  _anonymous_type_33 = record
    pDataStream: Pointer;
    pageIndex: ma_uint32;
  end;

  P_anonymous_type_34 = ^_anonymous_type_34;
  _anonymous_type_34 = record
    pDataStream: Pointer;
    frameIndex: ma_uint64;
  end;

  P_anonymous_type_35 = ^_anonymous_type_35;
  _anonymous_type_35 = record
    case Integer of
      0: (loadDataBufferNode: _anonymous_type_26);
      1: (freeDataBufferNode: _anonymous_type_27);
      2: (pageDataBufferNode: _anonymous_type_28);
      3: (loadDataBuffer: _anonymous_type_29);
      4: (freeDataBuffer: _anonymous_type_30);
      5: (loadDataStream: _anonymous_type_31);
      6: (freeDataStream: _anonymous_type_32);
      7: (pageDataStream: _anonymous_type_33);
      8: (seekDataStream: _anonymous_type_34);
  end;

  P_anonymous_type_36 = ^_anonymous_type_36;
  _anonymous_type_36 = record
    pDevice: Pointer;
    deviceType: ma_uint32;
  end;

  P_anonymous_type_37 = ^_anonymous_type_37;
  _anonymous_type_37 = record
    case Integer of
      0: (reroute: _anonymous_type_36);
  end;

  P_anonymous_type_38 = ^_anonymous_type_38;
  _anonymous_type_38 = record
    case Integer of
      0: (aaudio: _anonymous_type_37);
  end;

  P_anonymous_type_39 = ^_anonymous_type_39;
  _anonymous_type_39 = record
    case Integer of
      0: (custom: _anonymous_type_25);
      1: (resourceManager: _anonymous_type_35);
      2: (device: _anonymous_type_38);
  end;

  ma_job = record
    toc: _anonymous_type_24;
    next: ma_uint64;
    order: ma_uint32;
    data: _anonymous_type_39;
  end;

  ma_job_queue_flags = (
    MA_JOB_QUEUE_FLAG_NON_BLOCKING = 1);
  Pma_job_queue_flags = ^ma_job_queue_flags;

  ma_job_queue_config = record
    flags: ma_uint32;
    capacity: ma_uint32;
  end;

  ma_job_queue = record
    flags: ma_uint32;
    capacity: ma_uint32;
    head: ma_uint64;
    tail: ma_uint64;
    sem: ma_semaphore;
    allocator: ma_slot_allocator;
    pJobs: Pma_job;
    lock: ma_spinlock;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_device_state = (
    ma_device_state_uninitialized = 0,
    ma_device_state_stopped = 1,
    ma_device_state_started = 2,
    ma_device_state_starting = 3,
    ma_device_state_stopping = 4);
  Pma_device_state = ^ma_device_state;

  ma_IMMNotificationClient = record
    lpVtbl: Pointer;
    counter: ma_uint32;
    pDevice: Pma_device;
  end;

  ma_backend = (
    ma_backend_wasapi = 0,
    ma_backend_dsound = 1,
    ma_backend_winmm = 2,
    ma_backend_coreaudio = 3,
    ma_backend_sndio = 4,
    ma_backend_audio4 = 5,
    ma_backend_oss = 6,
    ma_backend_pulseaudio = 7,
    ma_backend_alsa = 8,
    ma_backend_jack = 9,
    ma_backend_aaudio = 10,
    ma_backend_opensl = 11,
    ma_backend_webaudio = 12,
    ma_backend_custom = 13,
    ma_backend_null = 14);
  Pma_backend = ^ma_backend;

  ma_device_job_thread_config = record
    noThread: ma_bool32;
    jobQueueCapacity: ma_uint32;
    jobQueueFlags: ma_uint32;
  end;

  ma_device_job_thread = record
    thread: ma_thread;
    jobQueue: ma_job_queue;
    _hasThread: ma_bool32;
  end;

  ma_device_notification_type = (
    ma_device_notification_type_started = 0,
    ma_device_notification_type_stopped = 1,
    ma_device_notification_type_rerouted = 2,
    ma_device_notification_type_interruption_began = 3,
    ma_device_notification_type_interruption_ended = 4);
  Pma_device_notification_type = ^ma_device_notification_type;

  P_anonymous_type_40 = ^_anonymous_type_40;
  _anonymous_type_40 = record
    _unused: Integer;
  end;

  P_anonymous_type_41 = ^_anonymous_type_41;
  _anonymous_type_41 = record
    _unused: Integer;
  end;

  P_anonymous_type_42 = ^_anonymous_type_42;
  _anonymous_type_42 = record
    _unused: Integer;
  end;

  P_anonymous_type_43 = ^_anonymous_type_43;
  _anonymous_type_43 = record
    _unused: Integer;
  end;

  P_anonymous_type_44 = ^_anonymous_type_44;
  _anonymous_type_44 = record
    case Integer of
      0: (started: _anonymous_type_40);
      1: (stopped: _anonymous_type_41);
      2: (rerouted: _anonymous_type_42);
      3: (interruption: _anonymous_type_43);
  end;

  ma_device_notification = record
    pDevice: Pma_device;
    type_: ma_device_notification_type;
    data: _anonymous_type_44;
  end;

  ma_device_notification_proc = procedure(const pNotification: Pma_device_notification); cdecl;

  ma_device_data_proc = procedure(pDevice: Pma_device; pOutput: Pointer; const pInput: Pointer; frameCount: ma_uint32); cdecl;

  ma_stop_proc = procedure(pDevice: Pma_device); cdecl;

  ma_device_type = (
    ma_device_type_playback = 1,
    ma_device_type_capture = 2,
    ma_device_type_duplex = 3,
    ma_device_type_loopback = 4);
  Pma_device_type = ^ma_device_type;

  ma_share_mode = (
    ma_share_mode_shared = 0,
    ma_share_mode_exclusive = 1);
  Pma_share_mode = ^ma_share_mode;

  ma_ios_session_category = (
    ma_ios_session_category_default = 0,
    ma_ios_session_category_none = 1,
    ma_ios_session_category_ambient = 2,
    ma_ios_session_category_solo_ambient = 3,
    ma_ios_session_category_playback = 4,
    ma_ios_session_category_record = 5,
    ma_ios_session_category_play_and_record = 6,
    ma_ios_session_category_multi_route = 7);
  Pma_ios_session_category = ^ma_ios_session_category;

  ma_ios_session_category_option = (
    ma_ios_session_category_option_mix_with_others = 1,
    ma_ios_session_category_option_duck_others = 2,
    ma_ios_session_category_option_allow_bluetooth = 4,
    ma_ios_session_category_option_default_to_speaker = 8,
    ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others = 17,
    ma_ios_session_category_option_allow_bluetooth_a2dp = 32,
    ma_ios_session_category_option_allow_air_play = 64);
  Pma_ios_session_category_option = ^ma_ios_session_category_option;

  ma_opensl_stream_type = (
    ma_opensl_stream_type_default = 0,
    ma_opensl_stream_type_voice = 1,
    ma_opensl_stream_type_system = 2,
    ma_opensl_stream_type_ring = 3,
    ma_opensl_stream_type_media = 4,
    ma_opensl_stream_type_alarm = 5,
    ma_opensl_stream_type_notification = 6);
  Pma_opensl_stream_type = ^ma_opensl_stream_type;

  ma_opensl_recording_preset = (
    ma_opensl_recording_preset_default = 0,
    ma_opensl_recording_preset_generic = 1,
    ma_opensl_recording_preset_camcorder = 2,
    ma_opensl_recording_preset_voice_recognition = 3,
    ma_opensl_recording_preset_voice_communication = 4,
    ma_opensl_recording_preset_voice_unprocessed = 5);
  Pma_opensl_recording_preset = ^ma_opensl_recording_preset;

  ma_wasapi_usage = (
    ma_wasapi_usage_default = 0,
    ma_wasapi_usage_games = 1,
    ma_wasapi_usage_pro_audio = 2);
  Pma_wasapi_usage = ^ma_wasapi_usage;

  ma_aaudio_usage = (
    ma_aaudio_usage_default = 0,
    ma_aaudio_usage_media = 1,
    ma_aaudio_usage_voice_communication = 2,
    ma_aaudio_usage_voice_communication_signalling = 3,
    ma_aaudio_usage_alarm = 4,
    ma_aaudio_usage_notification = 5,
    ma_aaudio_usage_notification_ringtone = 6,
    ma_aaudio_usage_notification_event = 7,
    ma_aaudio_usage_assistance_accessibility = 8,
    ma_aaudio_usage_assistance_navigation_guidance = 9,
    ma_aaudio_usage_assistance_sonification = 10,
    ma_aaudio_usage_game = 11,
    ma_aaudio_usage_assitant = 12,
    ma_aaudio_usage_emergency = 13,
    ma_aaudio_usage_safety = 14,
    ma_aaudio_usage_vehicle_status = 15,
    ma_aaudio_usage_announcement = 16);
  Pma_aaudio_usage = ^ma_aaudio_usage;

  ma_aaudio_content_type = (
    ma_aaudio_content_type_default = 0,
    ma_aaudio_content_type_speech = 1,
    ma_aaudio_content_type_music = 2,
    ma_aaudio_content_type_movie = 3,
    ma_aaudio_content_type_sonification = 4);
  Pma_aaudio_content_type = ^ma_aaudio_content_type;

  ma_aaudio_input_preset = (
    ma_aaudio_input_preset_default = 0,
    ma_aaudio_input_preset_generic = 1,
    ma_aaudio_input_preset_camcorder = 2,
    ma_aaudio_input_preset_voice_recognition = 3,
    ma_aaudio_input_preset_voice_communication = 4,
    ma_aaudio_input_preset_unprocessed = 5,
    ma_aaudio_input_preset_voice_performance = 6);
  Pma_aaudio_input_preset = ^ma_aaudio_input_preset;

  ma_timer = record
    case Integer of
      0: (counter: ma_int64);
      1: (counterD: Double);
  end;

  P_anonymous_type_45 = ^_anonymous_type_45;
  _anonymous_type_45 = record
    case Integer of
      0: (i: Integer);
      1: (s: array [0..255] of UTF8Char);
      2: (p: Pointer);
  end;

  Pma_device_id = ^ma_device_id;
  ma_device_id = record
    case Integer of
      0: (wasapi: array [0..63] of WideChar);
      1: (dsound: array [0..15] of ma_uint8);
      2: (winmm: ma_uint32);
      3: (alsa: array [0..255] of UTF8Char);
      4: (pulse: array [0..255] of UTF8Char);
      5: (jack: Integer);
      6: (coreaudio: array [0..255] of UTF8Char);
      7: (sndio: array [0..255] of UTF8Char);
      8: (audio4: array [0..255] of UTF8Char);
      9: (oss: array [0..63] of UTF8Char);
      10: (aaudio: ma_int32);
      11: (opensl: ma_uint32);
      12: (webaudio: array [0..31] of UTF8Char);
      13: (custom: _anonymous_type_45);
      14: (nullbackend: Integer);
  end;

  P_anonymous_type_46 = ^_anonymous_type_46;
  _anonymous_type_46 = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    flags: ma_uint32;
  end;

  ma_device_info = record
    id: ma_device_id;
    name: array [0..255] of UTF8Char;
    isDefault: ma_bool32;
    nativeDataFormatCount: ma_uint32;
    nativeDataFormats: array [0..63] of _anonymous_type_46;
  end;

  P_anonymous_type_47 = ^_anonymous_type_47;
  _anonymous_type_47 = record
    pDeviceID: Pma_device_id;
    format: ma_format;
    channels: ma_uint32;
    pChannelMap: Pma_channel;
    channelMixMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    shareMode: ma_share_mode;
  end;

  P_anonymous_type_48 = ^_anonymous_type_48;
  _anonymous_type_48 = record
    pDeviceID: Pma_device_id;
    format: ma_format;
    channels: ma_uint32;
    pChannelMap: Pma_channel;
    channelMixMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    shareMode: ma_share_mode;
  end;

  P_anonymous_type_49 = ^_anonymous_type_49;
  _anonymous_type_49 = record
    usage: ma_wasapi_usage;
    noAutoConvertSRC: ma_bool8;
    noDefaultQualitySRC: ma_bool8;
    noAutoStreamRouting: ma_bool8;
    noHardwareOffloading: ma_bool8;
    loopbackProcessID: ma_uint32;
    loopbackProcessExclude: ma_bool8;
  end;

  P_anonymous_type_50 = ^_anonymous_type_50;
  _anonymous_type_50 = record
    noMMap: ma_bool32;
    noAutoFormat: ma_bool32;
    noAutoChannels: ma_bool32;
    noAutoResample: ma_bool32;
  end;

  P_anonymous_type_51 = ^_anonymous_type_51;
  _anonymous_type_51 = record
    pStreamNamePlayback: PUTF8Char;
    pStreamNameCapture: PUTF8Char;
  end;

  P_anonymous_type_52 = ^_anonymous_type_52;
  _anonymous_type_52 = record
    allowNominalSampleRateChange: ma_bool32;
  end;

  P_anonymous_type_53 = ^_anonymous_type_53;
  _anonymous_type_53 = record
    streamType: ma_opensl_stream_type;
    recordingPreset: ma_opensl_recording_preset;
  end;

  P_anonymous_type_54 = ^_anonymous_type_54;
  _anonymous_type_54 = record
    usage: ma_aaudio_usage;
    contentType: ma_aaudio_content_type;
    inputPreset: ma_aaudio_input_preset;
    noAutoStartAfterReroute: ma_bool32;
  end;

  ma_device_config = record
    deviceType: ma_device_type;
    sampleRate: ma_uint32;
    periodSizeInFrames: ma_uint32;
    periodSizeInMilliseconds: ma_uint32;
    periods: ma_uint32;
    performanceProfile: ma_performance_profile;
    noPreSilencedOutputBuffer: ma_bool8;
    noClip: ma_bool8;
    noDisableDenormals: ma_bool8;
    noFixedSizedCallback: ma_bool8;
    dataCallback: ma_device_data_proc;
    notificationCallback: ma_device_notification_proc;
    stopCallback: ma_stop_proc;
    pUserData: Pointer;
    resampling: ma_resampler_config;
    playback: _anonymous_type_47;
    capture: _anonymous_type_48;
    wasapi: _anonymous_type_49;
    alsa: _anonymous_type_50;
    pulse: _anonymous_type_51;
    coreaudio: _anonymous_type_52;
    opensl: _anonymous_type_53;
    aaudio: _anonymous_type_54;
  end;

  ma_enum_devices_callback_proc = function(pContext: Pma_context; deviceType: ma_device_type; const pInfo: Pma_device_info; pUserData: Pointer): ma_bool32; cdecl;

  ma_device_descriptor = record
    pDeviceID: Pma_device_id;
    shareMode: ma_share_mode;
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    channelMap: array [0..253] of ma_channel;
    periodSizeInFrames: ma_uint32;
    periodSizeInMilliseconds: ma_uint32;
    periodCount: ma_uint32;
  end;

  ma_backend_callbacks = record
    onContextInit: function(pContext: Pma_context; const pConfig: Pma_context_config; pCallbacks: Pma_backend_callbacks): ma_result; cdecl;
    onContextUninit: function(pContext: Pma_context): ma_result; cdecl;
    onContextEnumerateDevices: function(pContext: Pma_context; callback: ma_enum_devices_callback_proc; pUserData: Pointer): ma_result; cdecl;
    onContextGetDeviceInfo: function(pContext: Pma_context; deviceType: ma_device_type; const pDeviceID: Pma_device_id; pDeviceInfo: Pma_device_info): ma_result; cdecl;
    onDeviceInit: function(pDevice: Pma_device; const pConfig: Pma_device_config; pDescriptorPlayback: Pma_device_descriptor; pDescriptorCapture: Pma_device_descriptor): ma_result; cdecl;
    onDeviceUninit: function(pDevice: Pma_device): ma_result; cdecl;
    onDeviceStart: function(pDevice: Pma_device): ma_result; cdecl;
    onDeviceStop: function(pDevice: Pma_device): ma_result; cdecl;
    onDeviceRead: function(pDevice: Pma_device; pFrames: Pointer; frameCount: ma_uint32; pFramesRead: Pma_uint32): ma_result; cdecl;
    onDeviceWrite: function(pDevice: Pma_device; const pFrames: Pointer; frameCount: ma_uint32; pFramesWritten: Pma_uint32): ma_result; cdecl;
    onDeviceDataLoop: function(pDevice: Pma_device): ma_result; cdecl;
    onDeviceDataLoopWakeup: function(pDevice: Pma_device): ma_result; cdecl;
    onDeviceGetInfo: function(pDevice: Pma_device; type_: ma_device_type; pDeviceInfo: Pma_device_info): ma_result; cdecl;
  end;

  P_anonymous_type_55 = ^_anonymous_type_55;
  _anonymous_type_55 = record
    useVerboseDeviceEnumeration: ma_bool32;
  end;

  P_anonymous_type_56 = ^_anonymous_type_56;
  _anonymous_type_56 = record
    pApplicationName: PUTF8Char;
    pServerName: PUTF8Char;
    tryAutoSpawn: ma_bool32;
  end;

  P_anonymous_type_57 = ^_anonymous_type_57;
  _anonymous_type_57 = record
    sessionCategory: ma_ios_session_category;
    sessionCategoryOptions: ma_uint32;
    noAudioSessionActivate: ma_bool32;
    noAudioSessionDeactivate: ma_bool32;
  end;

  P_anonymous_type_58 = ^_anonymous_type_58;
  _anonymous_type_58 = record
    pClientName: PUTF8Char;
    tryStartServer: ma_bool32;
  end;

  ma_context_config = record
    pLog: Pma_log;
    threadPriority: ma_thread_priority;
    threadStackSize: NativeUInt;
    pUserData: Pointer;
    allocationCallbacks: ma_allocation_callbacks;
    alsa: _anonymous_type_55;
    pulse: _anonymous_type_56;
    coreaudio: _anonymous_type_57;
    jack: _anonymous_type_58;
    custom: ma_backend_callbacks;
  end;

  P_anonymous_type_59 = ^_anonymous_type_59;
  _anonymous_type_59 = record
    _unused: Integer;
  end;

  P_anonymous_type_60 = ^_anonymous_type_60;
  _anonymous_type_60 = record
    deviceType: ma_device_type;
    pAudioClient: Pointer;
    ppAudioClientService: PPointer;
    pResult: Pma_result;
  end;

  P_anonymous_type_61 = ^_anonymous_type_61;
  _anonymous_type_61 = record
    pDevice: Pma_device;
    deviceType: ma_device_type;
  end;

  P_anonymous_type_62 = ^_anonymous_type_62;
  _anonymous_type_62 = record
    case Integer of
      0: (quit: _anonymous_type_59);
      1: (createAudioClient: _anonymous_type_60);
      2: (releaseAudioClient: _anonymous_type_61);
  end;

  ma_context_command__wasapi = record
    code: Integer;
    pEvent: Pma_event;
    data: _anonymous_type_62;
  end;

  P_anonymous_type_63 = ^_anonymous_type_63;
  _anonymous_type_63 = record
    commandThread: ma_thread;
    commandLock: ma_mutex;
    commandSem: ma_semaphore;
    commandIndex: ma_uint32;
    commandCount: ma_uint32;
    commands: array [0..3] of ma_context_command__wasapi;
    hAvrt: ma_handle;
    AvSetMmThreadCharacteristicsW: ma_proc;
    AvRevertMmThreadcharacteristics: ma_proc;
    hMMDevapi: ma_handle;
    ActivateAudioInterfaceAsync: ma_proc;
  end;

  P_anonymous_type_64 = ^_anonymous_type_64;
  _anonymous_type_64 = record
    hDSoundDLL: ma_handle;
    DirectSoundCreate: ma_proc;
    DirectSoundEnumerateA: ma_proc;
    DirectSoundCaptureCreate: ma_proc;
    DirectSoundCaptureEnumerateA: ma_proc;
  end;

  P_anonymous_type_65 = ^_anonymous_type_65;
  _anonymous_type_65 = record
    hWinMM: ma_handle;
    waveOutGetNumDevs: ma_proc;
    waveOutGetDevCapsA: ma_proc;
    waveOutOpen: ma_proc;
    waveOutClose: ma_proc;
    waveOutPrepareHeader: ma_proc;
    waveOutUnprepareHeader: ma_proc;
    waveOutWrite: ma_proc;
    waveOutReset: ma_proc;
    waveInGetNumDevs: ma_proc;
    waveInGetDevCapsA: ma_proc;
    waveInOpen: ma_proc;
    waveInClose: ma_proc;
    waveInPrepareHeader: ma_proc;
    waveInUnprepareHeader: ma_proc;
    waveInAddBuffer: ma_proc;
    waveInStart: ma_proc;
    waveInReset: ma_proc;
  end;

  P_anonymous_type_66 = ^_anonymous_type_66;
  _anonymous_type_66 = record
    jackSO: ma_handle;
    jack_client_open: ma_proc;
    jack_client_close: ma_proc;
    jack_client_name_size: ma_proc;
    jack_set_process_callback: ma_proc;
    jack_set_buffer_size_callback: ma_proc;
    jack_on_shutdown: ma_proc;
    jack_get_sample_rate: ma_proc;
    jack_get_buffer_size: ma_proc;
    jack_get_ports: ma_proc;
    jack_activate: ma_proc;
    jack_deactivate: ma_proc;
    jack_connect: ma_proc;
    jack_port_register: ma_proc;
    jack_port_name: ma_proc;
    jack_port_get_buffer: ma_proc;
    jack_free: ma_proc;
    pClientName: PUTF8Char;
    tryStartServer: ma_bool32;
  end;

  P_anonymous_type_67 = ^_anonymous_type_67;
  _anonymous_type_67 = record
    _unused: Integer;
  end;

  P_anonymous_type_68 = ^_anonymous_type_68;
  _anonymous_type_68 = record
    case Integer of
      0: (wasapi: _anonymous_type_63);
      1: (dsound: _anonymous_type_64);
      2: (winmm: _anonymous_type_65);
      3: (jack: _anonymous_type_66);
      4: (null_backend: _anonymous_type_67);
  end;

  P_anonymous_type_69 = ^_anonymous_type_69;
  _anonymous_type_69 = record
    hOle32DLL: ma_handle;
    CoInitializeEx: ma_proc;
    CoUninitialize: ma_proc;
    CoCreateInstance: ma_proc;
    CoTaskMemFree: ma_proc;
    PropVariantClear: ma_proc;
    StringFromGUID2: ma_proc;
    hUser32DLL: ma_handle;
    GetForegroundWindow: ma_proc;
    GetDesktopWindow: ma_proc;
    hAdvapi32DLL: ma_handle;
    RegOpenKeyExA: ma_proc;
    RegCloseKey: ma_proc;
    RegQueryValueExA: ma_proc;
  end;

  P_anonymous_type_70 = ^_anonymous_type_70;
  _anonymous_type_70 = record
    case Integer of
      0: (win32: _anonymous_type_69);
      1: (_unused: Integer);
  end;

  ma_context = record
    callbacks: ma_backend_callbacks;
    backend: ma_backend;
    pLog: Pma_log;
    log: ma_log;
    threadPriority: ma_thread_priority;
    threadStackSize: NativeUInt;
    pUserData: Pointer;
    allocationCallbacks: ma_allocation_callbacks;
    deviceEnumLock: ma_mutex;
    deviceInfoLock: ma_mutex;
    deviceInfoCapacity: ma_uint32;
    playbackDeviceInfoCount: ma_uint32;
    captureDeviceInfoCount: ma_uint32;
    pDeviceInfos: Pma_device_info;
    f15: _anonymous_type_68;
    f16: _anonymous_type_70;
  end;

  P_anonymous_type_71 = ^_anonymous_type_71;
  _anonymous_type_71 = record
    lpfOrder: ma_uint32;
  end;

  P_anonymous_type_72 = ^_anonymous_type_72;
  _anonymous_type_72 = record
    algorithm: ma_resample_algorithm;
    pBackendVTable: Pma_resampling_backend_vtable;
    pBackendUserData: Pointer;
    linear: _anonymous_type_71;
  end;

  P_anonymous_type_73 = ^_anonymous_type_73;
  _anonymous_type_73 = record
    pID: Pma_device_id;
    id: ma_device_id;
    name: array [0..255] of UTF8Char;
    shareMode: ma_share_mode;
    format: ma_format;
    channels: ma_uint32;
    channelMap: array [0..253] of ma_channel;
    internalFormat: ma_format;
    internalChannels: ma_uint32;
    internalSampleRate: ma_uint32;
    internalChannelMap: array [0..253] of ma_channel;
    internalPeriodSizeInFrames: ma_uint32;
    internalPeriods: ma_uint32;
    channelMixMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    converter: ma_data_converter;
    pIntermediaryBuffer: Pointer;
    intermediaryBufferCap: ma_uint32;
    intermediaryBufferLen: ma_uint32;
    pInputCache: Pointer;
    inputCacheCap: ma_uint64;
    inputCacheConsumed: ma_uint64;
    inputCacheRemaining: ma_uint64;
  end;

  P_anonymous_type_74 = ^_anonymous_type_74;
  _anonymous_type_74 = record
    pID: Pma_device_id;
    id: ma_device_id;
    name: array [0..255] of UTF8Char;
    shareMode: ma_share_mode;
    format: ma_format;
    channels: ma_uint32;
    channelMap: array [0..253] of ma_channel;
    internalFormat: ma_format;
    internalChannels: ma_uint32;
    internalSampleRate: ma_uint32;
    internalChannelMap: array [0..253] of ma_channel;
    internalPeriodSizeInFrames: ma_uint32;
    internalPeriods: ma_uint32;
    channelMixMode: ma_channel_mix_mode;
    calculateLFEFromSpatialChannels: ma_bool32;
    converter: ma_data_converter;
    pIntermediaryBuffer: Pointer;
    intermediaryBufferCap: ma_uint32;
    intermediaryBufferLen: ma_uint32;
  end;

  P_anonymous_type_75 = ^_anonymous_type_75;
  _anonymous_type_75 = record
    pAudioClientPlayback: ma_ptr;
    pAudioClientCapture: ma_ptr;
    pRenderClient: ma_ptr;
    pCaptureClient: ma_ptr;
    pDeviceEnumerator: ma_ptr;
    notificationClient: ma_IMMNotificationClient;
    hEventPlayback: ma_handle;
    hEventCapture: ma_handle;
    actualBufferSizeInFramesPlayback: ma_uint32;
    actualBufferSizeInFramesCapture: ma_uint32;
    originalPeriodSizeInFrames: ma_uint32;
    originalPeriodSizeInMilliseconds: ma_uint32;
    originalPeriods: ma_uint32;
    originalPerformanceProfile: ma_performance_profile;
    periodSizeInFramesPlayback: ma_uint32;
    periodSizeInFramesCapture: ma_uint32;
    pMappedBufferCapture: Pointer;
    mappedBufferCaptureCap: ma_uint32;
    mappedBufferCaptureLen: ma_uint32;
    pMappedBufferPlayback: Pointer;
    mappedBufferPlaybackCap: ma_uint32;
    mappedBufferPlaybackLen: ma_uint32;
    isStartedCapture: ma_bool32;
    isStartedPlayback: ma_bool32;
    loopbackProcessID: ma_uint32;
    loopbackProcessExclude: ma_bool8;
    noAutoConvertSRC: ma_bool8;
    noDefaultQualitySRC: ma_bool8;
    noHardwareOffloading: ma_bool8;
    allowCaptureAutoStreamRouting: ma_bool8;
    allowPlaybackAutoStreamRouting: ma_bool8;
    isDetachedPlayback: ma_bool8;
    isDetachedCapture: ma_bool8;
    usage: ma_wasapi_usage;
    hAvrtHandle: Pointer;
  end;

  P_anonymous_type_76 = ^_anonymous_type_76;
  _anonymous_type_76 = record
    pPlayback: ma_ptr;
    pPlaybackPrimaryBuffer: ma_ptr;
    pPlaybackBuffer: ma_ptr;
    pCapture: ma_ptr;
    pCaptureBuffer: ma_ptr;
  end;

  P_anonymous_type_77 = ^_anonymous_type_77;
  _anonymous_type_77 = record
    hDevicePlayback: ma_handle;
    hDeviceCapture: ma_handle;
    hEventPlayback: ma_handle;
    hEventCapture: ma_handle;
    fragmentSizeInFrames: ma_uint32;
    iNextHeaderPlayback: ma_uint32;
    iNextHeaderCapture: ma_uint32;
    headerFramesConsumedPlayback: ma_uint32;
    headerFramesConsumedCapture: ma_uint32;
    pWAVEHDRPlayback: Pma_uint8;
    pWAVEHDRCapture: Pma_uint8;
    pIntermediaryBufferPlayback: Pma_uint8;
    pIntermediaryBufferCapture: Pma_uint8;
    _pHeapData: Pma_uint8;
  end;

  P_anonymous_type_78 = ^_anonymous_type_78;
  _anonymous_type_78 = record
    pClient: ma_ptr;
    ppPortsPlayback: Pma_ptr;
    ppPortsCapture: Pma_ptr;
    pIntermediaryBufferPlayback: PSingle;
    pIntermediaryBufferCapture: PSingle;
  end;

  P_anonymous_type_79 = ^_anonymous_type_79;
  _anonymous_type_79 = record
    deviceThread: ma_thread;
    operationEvent: ma_event;
    operationCompletionEvent: ma_event;
    operationSemaphore: ma_semaphore;
    operation: ma_uint32;
    operationResult: ma_result;
    timer: ma_timer;
    priorRunTime: Double;
    currentPeriodFramesRemainingPlayback: ma_uint32;
    currentPeriodFramesRemainingCapture: ma_uint32;
    lastProcessedFramePlayback: ma_uint64;
    lastProcessedFrameCapture: ma_uint64;
    isStarted: ma_bool32;
  end;

  P_anonymous_type_80 = ^_anonymous_type_80;
  _anonymous_type_80 = record
    case Integer of
      0: (wasapi: _anonymous_type_75);
      1: (dsound: _anonymous_type_76);
      2: (winmm: _anonymous_type_77);
      3: (jack: _anonymous_type_78);
      4: (null_device: _anonymous_type_79);
  end;

  ma_device = record
    pContext: Pma_context;
    type_: ma_device_type;
    sampleRate: ma_uint32;
    state: ma_device_state;
    onData: ma_device_data_proc;
    onNotification: ma_device_notification_proc;
    onStop: ma_stop_proc;
    pUserData: Pointer;
    startStopLock: ma_mutex;
    wakeupEvent: ma_event;
    startEvent: ma_event;
    stopEvent: ma_event;
    thread: ma_thread;
    workResult: ma_result;
    isOwnerOfContext: ma_bool8;
    noPreSilencedOutputBuffer: ma_bool8;
    noClip: ma_bool8;
    noDisableDenormals: ma_bool8;
    noFixedSizedCallback: ma_bool8;
    masterVolumeFactor: Single;
    duplexRB: ma_duplex_rb;
    resampling: _anonymous_type_72;
    playback: _anonymous_type_73;
    capture: _anonymous_type_74;
    f25: _anonymous_type_80;
  end;

  Pma_data_source = Pointer;
  PPma_data_source = ^Pma_data_source;

  ma_data_source_vtable = record
    onRead: function(pDataSource: Pma_data_source; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
    onSeek: function(pDataSource: Pma_data_source; frameIndex: ma_uint64): ma_result; cdecl;
    onGetDataFormat: function(pDataSource: Pma_data_source; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
    onGetCursor: function(pDataSource: Pma_data_source; pCursor: Pma_uint64): ma_result; cdecl;
    onGetLength: function(pDataSource: Pma_data_source; pLength: Pma_uint64): ma_result; cdecl;
    onSetLooping: function(pDataSource: Pma_data_source; isLooping: ma_bool32): ma_result; cdecl;
    flags: ma_uint32;
  end;

  ma_data_source_get_next_proc = function(pDataSource: Pma_data_source): Pma_data_source; cdecl;

  ma_data_source_config = record
    vtable: Pma_data_source_vtable;
  end;

  ma_data_source_base = record
    vtable: Pma_data_source_vtable;
    rangeBegInFrames: ma_uint64;
    rangeEndInFrames: ma_uint64;
    loopBegInFrames: ma_uint64;
    loopEndInFrames: ma_uint64;
    pCurrent: Pma_data_source;
    pNext: Pma_data_source;
    onGetNext: ma_data_source_get_next_proc;
    isLooping: ma_bool32;
  end;

  ma_audio_buffer_ref = record
    ds: ma_data_source_base;
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    cursor: ma_uint64;
    sizeInFrames: ma_uint64;
    pData: Pointer;
  end;

  ma_audio_buffer_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    sizeInFrames: ma_uint64;
    pData: Pointer;
    allocationCallbacks: ma_allocation_callbacks;
  end;

  ma_audio_buffer = record
    ref: ma_audio_buffer_ref;
    allocationCallbacks: ma_allocation_callbacks;
    ownsData: ma_bool32;
    _pExtraData: array [0..0] of ma_uint8;
  end;

  ma_paged_audio_buffer_page = record
    pNext: Pma_paged_audio_buffer_page;
    sizeInFrames: ma_uint64;
    pAudioData: array [0..0] of ma_uint8;
  end;

  ma_paged_audio_buffer_data = record
    format: ma_format;
    channels: ma_uint32;
    head: ma_paged_audio_buffer_page;
    pTail: Pma_paged_audio_buffer_page;
  end;

  ma_paged_audio_buffer_config = record
    pData: Pma_paged_audio_buffer_data;
  end;

  ma_paged_audio_buffer = record
    ds: ma_data_source_base;
    pData: Pma_paged_audio_buffer_data;
    pCurrent: Pma_paged_audio_buffer_page;
    relativeCursor: ma_uint64;
    absoluteCursor: ma_uint64;
  end;

  Pma_vfs = Pointer;
  PPma_vfs = ^Pma_vfs;
  ma_vfs_file = ma_handle;
  Pma_vfs_file = ^ma_vfs_file;

  ma_open_mode_flags = (
    MA_OPEN_MODE_READ = 1,
    MA_OPEN_MODE_WRITE = 2);
  Pma_open_mode_flags = ^ma_open_mode_flags;

  ma_seek_origin = (
    ma_seek_origin_start = 0,
    ma_seek_origin_current = 1,
    ma_seek_origin_end = 2);
  Pma_seek_origin = ^ma_seek_origin;

  ma_file_info = record
    sizeInBytes: ma_uint64;
  end;

  ma_vfs_callbacks = record
    onOpen: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; openMode: ma_uint32; pFile: Pma_vfs_file): ma_result; cdecl;
    onOpenW: function(pVFS: Pma_vfs; const pFilePath: PWideChar; openMode: ma_uint32; pFile: Pma_vfs_file): ma_result; cdecl;
    onClose: function(pVFS: Pma_vfs; file_: ma_vfs_file): ma_result; cdecl;
    onRead: function(pVFS: Pma_vfs; file_: ma_vfs_file; pDst: Pointer; sizeInBytes: NativeUInt; pBytesRead: PNativeUInt): ma_result; cdecl;
    onWrite: function(pVFS: Pma_vfs; file_: ma_vfs_file; const pSrc: Pointer; sizeInBytes: NativeUInt; pBytesWritten: PNativeUInt): ma_result; cdecl;
    onSeek: function(pVFS: Pma_vfs; file_: ma_vfs_file; offset: ma_int64; origin: ma_seek_origin): ma_result; cdecl;
    onTell: function(pVFS: Pma_vfs; file_: ma_vfs_file; pCursor: Pma_int64): ma_result; cdecl;
    onInfo: function(pVFS: Pma_vfs; file_: ma_vfs_file; pInfo: Pma_file_info): ma_result; cdecl;
  end;

  ma_default_vfs = record
    cb: ma_vfs_callbacks;
    allocationCallbacks: ma_allocation_callbacks;
  end;

  ma_read_proc = function(pUserData: Pointer; pBufferOut: Pointer; bytesToRead: NativeUInt; pBytesRead: PNativeUInt): ma_result; cdecl;

  ma_seek_proc = function(pUserData: Pointer; offset: ma_int64; origin: ma_seek_origin): ma_result; cdecl;

  ma_tell_proc = function(pUserData: Pointer; pCursor: Pma_int64): ma_result; cdecl;

  ma_encoding_format = (
    ma_encoding_format_unknown = 0,
    ma_encoding_format_wav = 1,
    ma_encoding_format_flac = 2,
    ma_encoding_format_mp3 = 3,
    ma_encoding_format_vorbis = 4);
  Pma_encoding_format = ^ma_encoding_format;

  ma_decoding_backend_config = record
    preferredFormat: ma_format;
    seekPointCount: ma_uint32;
  end;

  ma_decoding_backend_vtable = record
    onInit: function(pUserData: Pointer; onRead: ma_read_proc; onSeek: ma_seek_proc; onTell: ma_tell_proc; pReadSeekTellUserData: Pointer; const pConfig: Pma_decoding_backend_config; const pAllocationCallbacks: Pma_allocation_callbacks; ppBackend: PPma_data_source): ma_result; cdecl;
    onInitFile: function(pUserData: Pointer; const pFilePath: PUTF8Char; const pConfig: Pma_decoding_backend_config; const pAllocationCallbacks: Pma_allocation_callbacks; ppBackend: PPma_data_source): ma_result; cdecl;
    onInitFileW: function(pUserData: Pointer; const pFilePath: PWideChar; const pConfig: Pma_decoding_backend_config; const pAllocationCallbacks: Pma_allocation_callbacks; ppBackend: PPma_data_source): ma_result; cdecl;
    onInitMemory: function(pUserData: Pointer; const pData: Pointer; dataSize: NativeUInt; const pConfig: Pma_decoding_backend_config; const pAllocationCallbacks: Pma_allocation_callbacks; ppBackend: PPma_data_source): ma_result; cdecl;
    onUninit: procedure(pUserData: Pointer; pBackend: Pma_data_source; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  end;

  ma_decoder_read_proc = function(pDecoder: Pma_decoder; pBufferOut: Pointer; bytesToRead: NativeUInt; pBytesRead: PNativeUInt): ma_result; cdecl;

  ma_decoder_seek_proc = function(pDecoder: Pma_decoder; byteOffset: ma_int64; origin: ma_seek_origin): ma_result; cdecl;

  ma_decoder_tell_proc = function(pDecoder: Pma_decoder; pCursor: Pma_int64): ma_result; cdecl;

  ma_decoder_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    pChannelMap: Pma_channel;
    channelMixMode: ma_channel_mix_mode;
    ditherMode: ma_dither_mode;
    resampling: ma_resampler_config;
    allocationCallbacks: ma_allocation_callbacks;
    encodingFormat: ma_encoding_format;
    seekPointCount: ma_uint32;
    ppCustomBackendVTables: PPma_decoding_backend_vtable;
    customBackendCount: ma_uint32;
    pCustomBackendUserData: Pointer;
  end;

  P_anonymous_type_81 = ^_anonymous_type_81;
  _anonymous_type_81 = record
    pVFS: Pma_vfs;
    file_: ma_vfs_file;
  end;

  P_anonymous_type_82 = ^_anonymous_type_82;
  _anonymous_type_82 = record
    pData: Pma_uint8;
    dataSize: NativeUInt;
    currentReadPos: NativeUInt;
  end;

  P_anonymous_type_83 = ^_anonymous_type_83;
  _anonymous_type_83 = record
    case Integer of
      0: (vfs: _anonymous_type_81);
      1: (memory: _anonymous_type_82);
  end;

  ma_decoder = record
    ds: ma_data_source_base;
    pBackend: Pma_data_source;
    pBackendVTable: Pma_decoding_backend_vtable;
    pBackendUserData: Pointer;
    onRead: ma_decoder_read_proc;
    onSeek: ma_decoder_seek_proc;
    onTell: ma_decoder_tell_proc;
    pUserData: Pointer;
    readPointerInPCMFrames: ma_uint64;
    outputFormat: ma_format;
    outputChannels: ma_uint32;
    outputSampleRate: ma_uint32;
    converter: ma_data_converter;
    pInputCache: Pointer;
    inputCacheCap: ma_uint64;
    inputCacheConsumed: ma_uint64;
    inputCacheRemaining: ma_uint64;
    allocationCallbacks: ma_allocation_callbacks;
    data: _anonymous_type_83;
  end;

  ma_encoder_write_proc = function(pEncoder: Pma_encoder; const pBufferIn: Pointer; bytesToWrite: NativeUInt; pBytesWritten: PNativeUInt): ma_result; cdecl;

  ma_encoder_seek_proc = function(pEncoder: Pma_encoder; offset: ma_int64; origin: ma_seek_origin): ma_result; cdecl;

  ma_encoder_init_proc = function(pEncoder: Pma_encoder): ma_result; cdecl;

  ma_encoder_uninit_proc = procedure(pEncoder: Pma_encoder); cdecl;

  ma_encoder_write_pcm_frames_proc = function(pEncoder: Pma_encoder; const pFramesIn: Pointer; frameCount: ma_uint64; pFramesWritten: Pma_uint64): ma_result; cdecl;

  ma_encoder_config = record
    encodingFormat: ma_encoding_format;
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    allocationCallbacks: ma_allocation_callbacks;
  end;

  P_anonymous_type_84 = ^_anonymous_type_84;
  _anonymous_type_84 = record
    pVFS: Pma_vfs;
    file_: ma_vfs_file;
  end;

  P_anonymous_type_85 = ^_anonymous_type_85;
  _anonymous_type_85 = record
    case Integer of
      0: (vfs: _anonymous_type_84);
  end;

  ma_encoder = record
    config: ma_encoder_config;
    onWrite: ma_encoder_write_proc;
    onSeek: ma_encoder_seek_proc;
    onInit: ma_encoder_init_proc;
    onUninit: ma_encoder_uninit_proc;
    onWritePCMFrames: ma_encoder_write_pcm_frames_proc;
    pUserData: Pointer;
    pInternalEncoder: Pointer;
    data: _anonymous_type_85;
  end;

  ma_waveform_type = (
    ma_waveform_type_sine = 0,
    ma_waveform_type_square = 1,
    ma_waveform_type_triangle = 2,
    ma_waveform_type_sawtooth = 3);
  Pma_waveform_type = ^ma_waveform_type;

  ma_waveform_config = record
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    type_: ma_waveform_type;
    amplitude: Double;
    frequency: Double;
  end;

  ma_waveform = record
    ds: ma_data_source_base;
    config: ma_waveform_config;
    advance: Double;
    time: Double;
  end;

  ma_noise_type = (
    ma_noise_type_white = 0,
    ma_noise_type_pink = 1,
    ma_noise_type_brownian = 2);
  Pma_noise_type = ^ma_noise_type;

  ma_noise_config = record
    format: ma_format;
    channels: ma_uint32;
    type_: ma_noise_type;
    seed: ma_int32;
    amplitude: Double;
    duplicateChannels: ma_bool32;
  end;

  P_anonymous_type_86 = ^_anonymous_type_86;
  _anonymous_type_86 = record
    bin: PPDouble;
    accumulation: PDouble;
    counter: Pma_uint32;
  end;

  P_anonymous_type_87 = ^_anonymous_type_87;
  _anonymous_type_87 = record
    accumulation: PDouble;
  end;

  P_anonymous_type_88 = ^_anonymous_type_88;
  _anonymous_type_88 = record
    case Integer of
      0: (pink: _anonymous_type_86);
      1: (brownian: _anonymous_type_87);
  end;

  ma_noise = record
    ds: ma_data_source_vtable;
    config: ma_noise_config;
    lcg: ma_lcg;
    state: _anonymous_type_88;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_resource_manager_data_source_flags = (
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM = 1,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE = 2,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC = 4,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT = 8,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH = 16);
  Pma_resource_manager_data_source_flags = ^ma_resource_manager_data_source_flags;

  ma_resource_manager_pipeline_stage_notification = record
    pNotification: Pma_async_notification;
    pFence: Pma_fence;
  end;

  ma_resource_manager_pipeline_notifications = record
    init: ma_resource_manager_pipeline_stage_notification;
    done: ma_resource_manager_pipeline_stage_notification;
  end;

  ma_resource_manager_flags = (
    MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING = 1,
    MA_RESOURCE_MANAGER_FLAG_NO_THREADING = 2);
  Pma_resource_manager_flags = ^ma_resource_manager_flags;

  ma_resource_manager_data_source_config = record
    pFilePath: PUTF8Char;
    pFilePathW: PWideChar;
    pNotifications: Pma_resource_manager_pipeline_notifications;
    initialSeekPointInPCMFrames: ma_uint64;
    rangeBegInPCMFrames: ma_uint64;
    rangeEndInPCMFrames: ma_uint64;
    loopPointBegInPCMFrames: ma_uint64;
    loopPointEndInPCMFrames: ma_uint64;
    isLooping: ma_bool32;
    flags: ma_uint32;
  end;

  ma_resource_manager_data_supply_type = (
    ma_resource_manager_data_supply_type_unknown = 0,
    ma_resource_manager_data_supply_type_encoded = 1,
    ma_resource_manager_data_supply_type_decoded = 2,
    ma_resource_manager_data_supply_type_decoded_paged = 3);
  Pma_resource_manager_data_supply_type = ^ma_resource_manager_data_supply_type;

  P_anonymous_type_89 = ^_anonymous_type_89;
  _anonymous_type_89 = record
    pData: Pointer;
    sizeInBytes: NativeUInt;
  end;

  P_anonymous_type_90 = ^_anonymous_type_90;
  _anonymous_type_90 = record
    pData: Pointer;
    totalFrameCount: ma_uint64;
    decodedFrameCount: ma_uint64;
    format: ma_format;
    channels: ma_uint32;
    sampleRate: ma_uint32;
  end;

  P_anonymous_type_91 = ^_anonymous_type_91;
  _anonymous_type_91 = record
    data: ma_paged_audio_buffer_data;
    decodedFrameCount: ma_uint64;
    sampleRate: ma_uint32;
  end;

  P_anonymous_type_92 = ^_anonymous_type_92;
  _anonymous_type_92 = record
    case Integer of
      0: (encoded: _anonymous_type_89);
      1: (decoded: _anonymous_type_90);
      2: (decodedPaged: _anonymous_type_91);
  end;

  ma_resource_manager_data_supply = record
    type_: ma_resource_manager_data_supply_type;
    backend: _anonymous_type_92;
  end;

  ma_resource_manager_data_buffer_node = record
    hashedName32: ma_uint32;
    refCount: ma_uint32;
    result: ma_result;
    executionCounter: ma_uint32;
    executionPointer: ma_uint32;
    isDataOwnedByResourceManager: ma_bool32;
    data: ma_resource_manager_data_supply;
    pParent: Pma_resource_manager_data_buffer_node;
    pChildLo: Pma_resource_manager_data_buffer_node;
    pChildHi: Pma_resource_manager_data_buffer_node;
  end;

  P_anonymous_type_93 = ^_anonymous_type_93;
  _anonymous_type_93 = record
    case Integer of
      0: (decoder: ma_decoder);
      1: (buffer: ma_audio_buffer);
      2: (pagedBuffer: ma_paged_audio_buffer);
  end;

  ma_resource_manager_data_buffer = record
    ds: ma_data_source_base;
    pResourceManager: Pma_resource_manager;
    pNode: Pma_resource_manager_data_buffer_node;
    flags: ma_uint32;
    executionCounter: ma_uint32;
    executionPointer: ma_uint32;
    seekTargetInPCMFrames: ma_uint64;
    seekToCursorOnNextRead: ma_bool32;
    result: ma_result;
    isLooping: ma_bool32;
    isConnectorInitialized: ma_bool32;
    connector: _anonymous_type_93;
  end;

  ma_resource_manager_data_stream = record
    ds: ma_data_source_base;
    pResourceManager: Pma_resource_manager;
    flags: ma_uint32;
    decoder: ma_decoder;
    isDecoderInitialized: ma_bool32;
    totalLengthInPCMFrames: ma_uint64;
    relativeCursor: ma_uint32;
    absoluteCursor: ma_uint64;
    currentPageIndex: ma_uint32;
    executionCounter: ma_uint32;
    executionPointer: ma_uint32;
    isLooping: ma_bool32;
    pPageData: Pointer;
    pageFrameCount: array [0..1] of ma_uint32;
    result: ma_result;
    isDecoderAtEnd: ma_bool32;
    isPageValid: array [0..1] of ma_bool32;
    seekCounter: ma_bool32;
  end;

  P_anonymous_type_94 = ^_anonymous_type_94;
  _anonymous_type_94 = record
    case Integer of
      0: (buffer: ma_resource_manager_data_buffer);
      1: (stream: ma_resource_manager_data_stream);
  end;

  ma_resource_manager_data_source = record
    backend: _anonymous_type_94;
    flags: ma_uint32;
    executionCounter: ma_uint32;
    executionPointer: ma_uint32;
  end;

  ma_resource_manager_config = record
    allocationCallbacks: ma_allocation_callbacks;
    pLog: Pma_log;
    decodedFormat: ma_format;
    decodedChannels: ma_uint32;
    decodedSampleRate: ma_uint32;
    jobThreadCount: ma_uint32;
    jobQueueCapacity: ma_uint32;
    flags: ma_uint32;
    pVFS: Pma_vfs;
    ppCustomDecodingBackendVTables: PPma_decoding_backend_vtable;
    customDecodingBackendCount: ma_uint32;
    pCustomDecodingBackendUserData: Pointer;
  end;

  ma_resource_manager = record
    config: ma_resource_manager_config;
    pRootDataBufferNode: Pma_resource_manager_data_buffer_node;
    dataBufferBSTLock: ma_mutex;
    jobThreads: array [0..63] of ma_thread;
    jobQueue: ma_job_queue;
    defaultVFS: ma_default_vfs;
    log: ma_log;
  end;

  Pma_node = Pointer;
  PPma_node = ^Pma_node;

  ma_node_flags = (
    MA_NODE_FLAG_PASSTHROUGH = 1,
    MA_NODE_FLAG_CONTINUOUS_PROCESSING = 2,
    MA_NODE_FLAG_ALLOW_NULL_INPUT = 4,
    MA_NODE_FLAG_DIFFERENT_PROCESSING_RATES = 8,
    MA_NODE_FLAG_SILENT_OUTPUT = 16);
  Pma_node_flags = ^ma_node_flags;

  ma_node_state = (
    ma_node_state_started = 0,
    ma_node_state_stopped = 1);
  Pma_node_state = ^ma_node_state;

  ma_node_vtable = record
    onProcess: procedure(pNode: Pma_node; ppFramesIn: PPSingle; pFrameCountIn: Pma_uint32; ppFramesOut: PPSingle; pFrameCountOut: Pma_uint32); cdecl;
    onGetRequiredInputFrameCount: function(pNode: Pma_node; outputFrameCount: ma_uint32; pInputFrameCount: Pma_uint32): ma_result; cdecl;
    inputBusCount: ma_uint8;
    outputBusCount: ma_uint8;
    flags: ma_uint32;
  end;

  ma_node_config = record
    vtable: Pma_node_vtable;
    initialState: ma_node_state;
    inputBusCount: ma_uint32;
    outputBusCount: ma_uint32;
    pInputChannels: Pma_uint32;
    pOutputChannels: Pma_uint32;
  end;

  ma_node_output_bus = record
    pNode: Pma_node;
    outputBusIndex: ma_uint8;
    channels: ma_uint8;
    inputNodeInputBusIndex: ma_uint8;
    flags: ma_uint32;
    refCount: ma_uint32;
    isAttached: ma_bool32;
    lock: ma_spinlock;
    volume: Single;
    pNext: Pma_node_output_bus;
    pPrev: Pma_node_output_bus;
    pInputNode: Pma_node;
  end;

  ma_node_input_bus = record
    head: ma_node_output_bus;
    nextCounter: ma_uint32;
    lock: ma_spinlock;
    channels: ma_uint8;
  end;

  ma_node_base = record
    pNodeGraph: Pma_node_graph;
    vtable: Pma_node_vtable;
    pCachedData: PSingle;
    cachedDataCapInFramesPerBus: ma_uint16;
    cachedFrameCountOut: ma_uint16;
    cachedFrameCountIn: ma_uint16;
    consumedFrameCountIn: ma_uint16;
    state: ma_node_state;
    stateTimes: array [0..1] of ma_uint64;
    localTime: ma_uint64;
    inputBusCount: ma_uint32;
    outputBusCount: ma_uint32;
    pInputBuses: Pma_node_input_bus;
    pOutputBuses: Pma_node_output_bus;
    _inputBuses: array [0..1] of ma_node_input_bus;
    _outputBuses: array [0..1] of ma_node_output_bus;
    _pHeap: Pointer;
    _ownsHeap: ma_bool32;
  end;

  ma_node_graph_config = record
    channels: ma_uint32;
    nodeCacheCapInFrames: ma_uint16;
  end;

  ma_node_graph = record
    base: ma_node_base;
    endpoint: ma_node_base;
    nodeCacheCapInFrames: ma_uint16;
    isReading: ma_bool32;
  end;

  ma_data_source_node_config = record
    nodeConfig: ma_node_config;
    pDataSource: Pma_data_source;
  end;

  ma_data_source_node = record
    base: ma_node_base;
    pDataSource: Pma_data_source;
  end;

  ma_splitter_node_config = record
    nodeConfig: ma_node_config;
    channels: ma_uint32;
    outputBusCount: ma_uint32;
  end;

  ma_splitter_node = record
    base: ma_node_base;
  end;

  ma_biquad_node_config = record
    nodeConfig: ma_node_config;
    biquad: ma_biquad_config;
  end;

  ma_biquad_node = record
    baseNode: ma_node_base;
    biquad: ma_biquad;
  end;

  ma_lpf_node_config = record
    nodeConfig: ma_node_config;
    lpf: ma_lpf_config;
  end;

  ma_lpf_node = record
    baseNode: ma_node_base;
    lpf: ma_lpf;
  end;

  ma_hpf_node_config = record
    nodeConfig: ma_node_config;
    hpf: ma_hpf_config;
  end;

  ma_hpf_node = record
    baseNode: ma_node_base;
    hpf: ma_hpf;
  end;

  ma_bpf_node_config = record
    nodeConfig: ma_node_config;
    bpf: ma_bpf_config;
  end;

  ma_bpf_node = record
    baseNode: ma_node_base;
    bpf: ma_bpf;
  end;

  ma_notch_node_config = record
    nodeConfig: ma_node_config;
    notch: ma_notch_config;
  end;

  ma_notch_node = record
    baseNode: ma_node_base;
    notch: ma_notch2;
  end;

  ma_peak_node_config = record
    nodeConfig: ma_node_config;
    peak: ma_peak_config;
  end;

  ma_peak_node = record
    baseNode: ma_node_base;
    peak: ma_peak2;
  end;

  ma_loshelf_node_config = record
    nodeConfig: ma_node_config;
    loshelf: ma_loshelf_config;
  end;

  ma_loshelf_node = record
    baseNode: ma_node_base;
    loshelf: ma_loshelf2;
  end;

  ma_hishelf_node_config = record
    nodeConfig: ma_node_config;
    hishelf: ma_hishelf_config;
  end;

  ma_hishelf_node = record
    baseNode: ma_node_base;
    hishelf: ma_hishelf2;
  end;

  ma_delay_node_config = record
    nodeConfig: ma_node_config;
    delay: ma_delay_config;
  end;

  ma_delay_node = record
    baseNode: ma_node_base;
    delay: ma_delay;
  end;

  ma_sound_flags = (
    MA_SOUND_FLAG_STREAM = 1,
    MA_SOUND_FLAG_DECODE = 2,
    MA_SOUND_FLAG_ASYNC = 4,
    MA_SOUND_FLAG_WAIT_INIT = 8,
    MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT = 16,
    MA_SOUND_FLAG_NO_PITCH = 32,
    MA_SOUND_FLAG_NO_SPATIALIZATION = 64);
  Pma_sound_flags = ^ma_sound_flags;

  ma_engine_node_type = (
    ma_engine_node_type_sound = 0,
    ma_engine_node_type_group = 1);
  Pma_engine_node_type = ^ma_engine_node_type;

  ma_engine_node_config = record
    pEngine: Pma_engine;
    type_: ma_engine_node_type;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    sampleRate: ma_uint32;
    monoExpansionMode: ma_mono_expansion_mode;
    isPitchDisabled: ma_bool8;
    isSpatializationDisabled: ma_bool8;
    pinnedListenerIndex: ma_uint8;
  end;

  ma_engine_node = record
    baseNode: ma_node_base;
    pEngine: Pma_engine;
    sampleRate: ma_uint32;
    monoExpansionMode: ma_mono_expansion_mode;
    fader: ma_fader;
    resampler: ma_linear_resampler;
    spatializer: ma_spatializer;
    panner: ma_panner;
    pitch: Single;
    oldPitch: Single;
    oldDopplerPitch: Single;
    isPitchDisabled: ma_bool32;
    isSpatializationDisabled: ma_bool32;
    pinnedListenerIndex: ma_uint32;
    _ownsHeap: ma_bool8;
    _pHeap: Pointer;
  end;

  ma_sound_config = record
    pFilePath: PUTF8Char;
    pFilePathW: PWideChar;
    pDataSource: Pma_data_source;
    pInitialAttachment: Pma_node;
    initialAttachmentInputBusIndex: ma_uint32;
    channelsIn: ma_uint32;
    channelsOut: ma_uint32;
    monoExpansionMode: ma_mono_expansion_mode;
    flags: ma_uint32;
    initialSeekPointInPCMFrames: ma_uint64;
    rangeBegInPCMFrames: ma_uint64;
    rangeEndInPCMFrames: ma_uint64;
    loopPointBegInPCMFrames: ma_uint64;
    loopPointEndInPCMFrames: ma_uint64;
    isLooping: ma_bool32;
    pDoneFence: Pma_fence;
  end;

  ma_sound = record
    engineNode: ma_engine_node;
    pDataSource: Pma_data_source;
    seekTarget: ma_uint64;
    atEnd: ma_bool32;
    ownsDataSource: ma_bool8;
    pResourceManagerDataSource: Pma_resource_manager_data_source;
  end;

  ma_sound_inlined = record
    sound: ma_sound;
    pNext: Pma_sound_inlined;
    pPrev: Pma_sound_inlined;
  end;

  ma_sound_group_config = ma_sound_config;
  Pma_sound_group_config = ^ma_sound_group_config;
  ma_sound_group = ma_sound;
  Pma_sound_group = ^ma_sound_group;

  ma_engine_config = record
    pResourceManager: Pma_resource_manager;
    pContext: Pma_context;
    pDevice: Pma_device;
    pPlaybackDeviceID: Pma_device_id;
    notificationCallback: ma_device_notification_proc;
    pLog: Pma_log;
    listenerCount: ma_uint32;
    channels: ma_uint32;
    sampleRate: ma_uint32;
    periodSizeInFrames: ma_uint32;
    periodSizeInMilliseconds: ma_uint32;
    gainSmoothTimeInFrames: ma_uint32;
    gainSmoothTimeInMilliseconds: ma_uint32;
    allocationCallbacks: ma_allocation_callbacks;
    noAutoStart: ma_bool32;
    noDevice: ma_bool32;
    monoExpansionMode: ma_mono_expansion_mode;
    pResourceManagerVFS: Pma_vfs;
  end;

  ma_engine = record
    nodeGraph: ma_node_graph;
    pResourceManager: Pma_resource_manager;
    pDevice: Pma_device;
    pLog: Pma_log;
    sampleRate: ma_uint32;
    listenerCount: ma_uint32;
    listeners: array [0..3] of ma_spatializer_listener;
    allocationCallbacks: ma_allocation_callbacks;
    ownsResourceManager: ma_bool8;
    ownsDevice: ma_bool8;
    inlinedSoundLock: ma_spinlock;
    pInlinedSoundHead: Pma_sound_inlined;
    inlinedSoundCount: ma_uint32;
    gainSmoothTimeInFrames: ma_uint32;
    monoExpansionMode: ma_mono_expansion_mode;
  end;

  tm_zip_s = record
    tm_sec: Integer;
    tm_min: Integer;
    tm_hour: Integer;
    tm_mday: Integer;
    tm_mon: Integer;
    tm_year: Integer;
  end;

  tm_zip = tm_zip_s;

  zip_fileinfo = record
    tmz_date: tm_zip;
    dosDate: Cardinal;
    internal_fa: Cardinal;
  end;

  zipFile = Pointer;

  tmx_map_orient = (
    O_NONE = 0,
    O_ORT = 1,
    O_ISO = 2,
    O_STA = 3,
    O_HEX = 4);
  Ptmx_map_orient = ^tmx_map_orient;

  tmx_map_renderorder = (
    R_NONE = 0,
    R_RIGHTDOWN = 1,
    R_RIGHTUP = 2,
    R_LEFTDOWN = 3,
    R_LEFTUP = 4);
  Ptmx_map_renderorder = ^tmx_map_renderorder;

  tmx_stagger_index = (
    SI_NONE = 0,
    SI_EVEN = 1,
    SI_ODD = 2);
  Ptmx_stagger_index = ^tmx_stagger_index;

  tmx_stagger_axis = (
    SA_NONE = 0,
    SA_X = 1,
    SA_Y = 2);
  Ptmx_stagger_axis = ^tmx_stagger_axis;

  tmx_obj_alignment = (
    OA_NONE = 0,
    OA_TOP = 1,
    OA_LEFT = 2,
    OA_BOTTOM = 3,
    OA_RIGHT = 4,
    OA_CENTER = 5,
    OA_TOPLEFT = 6,
    OA_TOPRIGHT = 7,
    OA_BOTTOMLEFT = 8,
    OA_BOTTOMRIGHT = 9);
  Ptmx_obj_alignment = ^tmx_obj_alignment;

  tmx_layer_type = (
    L_NONE = 0,
    L_LAYER = 1,
    L_OBJGR = 2,
    L_IMAGE = 3,
    L_GROUP = 4);
  Ptmx_layer_type = ^tmx_layer_type;

  tmx_objgr_draworder = (
    G_NONE = 0,
    G_INDEX = 1,
    G_TOPDOWN = 2);
  Ptmx_objgr_draworder = ^tmx_objgr_draworder;

  tmx_obj_type = (
    OT_NONE = 0,
    OT_SQUARE = 1,
    OT_POLYGON = 2,
    OT_POLYLINE = 3,
    OT_ELLIPSE = 4,
    OT_TILE = 5,
    OT_TEXT = 6,
    OT_POINT = 7);
  Ptmx_obj_type = ^tmx_obj_type;

  tmx_property_type = (
    PT_NONE = 0,
    PT_INT = 1,
    PT_FLOAT = 2,
    PT_BOOL = 3,
    PT_STRING = 4,
    PT_COLOR = 5,
    PT_FILE = 6);
  Ptmx_property_type = ^tmx_property_type;

  tmx_horizontal_align = (
    HA_NONE = 0,
    HA_LEFT = 1,
    HA_CENTER = 2,
    HA_RIGHT = 3);
  Ptmx_horizontal_align = ^tmx_horizontal_align;

  tmx_vertical_align = (
    VA_NONE = 0,
    VA_TOP = 1,
    VA_CENTER = 2,
    VA_BOTTOM = 3);
  Ptmx_vertical_align = ^tmx_vertical_align;
  Ptmx_property = ^tmx_property;
  Ptmx_image = ^tmx_image;
  Ptmx_anim_frame = ^tmx_anim_frame;
  Ptmx_tile = ^tmx_tile;
  PPtmx_tile = ^Ptmx_tile;
  Ptmx_tileset = ^tmx_tileset;
  Ptmx_tileset_list = ^tmx_tileset_list;
  Ptmx_shape = ^tmx_shape;
  Ptmx_text = ^tmx_text;
  Ptmx_object = ^tmx_object;
  Ptmx_object_group = ^tmx_object_group;
  Ptmx_template = ^tmx_template;
  Ptmx_layer = ^tmx_layer;
  Ptmx_map = ^tmx_map;
  Ptmx_properties = Pointer;
  PPtmx_properties = ^Ptmx_properties;

  tmx_user_data = record
    case Integer of
      0: (integer_: Integer);
      1: (decimal: Single);
      2: (pointer: Pointer);
  end;

  tmx_property_value = record
    case Integer of
      0: (integer_: Integer);
      1: (boolean: Integer);
      2: (decimal: Single);
      3: (string_: PUTF8Char);
      4: (file_: PUTF8Char);
      5: (color: UInt32);
  end;

  _tmx_prop = record
    name: PUTF8Char;
    type_: tmx_property_type;
    value: tmx_property_value;
  end;

  _tmx_img = record
    source: PUTF8Char;
    trans: Cardinal;
    uses_trans: Integer;
    width: Cardinal;
    height: Cardinal;
    resource_image: Pointer;
  end;

  _tmx_frame = record
    tile_id: Cardinal;
    duration: Cardinal;
  end;

  _tmx_tile = record
    id: Cardinal;
    tileset: Ptmx_tileset;
    ul_x: Cardinal;
    ul_y: Cardinal;
    image: Ptmx_image;
    collision: Ptmx_object;
    animation_len: Cardinal;
    animation: Ptmx_anim_frame;
    type_: PUTF8Char;
    properties: Ptmx_properties;
    user_data: tmx_user_data;
  end;

  _tmx_ts = record
    name: PUTF8Char;
    tile_width: Cardinal;
    tile_height: Cardinal;
    spacing: Cardinal;
    margin: Cardinal;
    x_offset: Integer;
    y_offset: Integer;
    objectalignment: tmx_obj_alignment;
    tilecount: Cardinal;
    image: Ptmx_image;
    user_data: tmx_user_data;
    properties: Ptmx_properties;
    tiles: Ptmx_tile;
  end;

  _tmx_ts_list = record
    is_embedded: Integer;
    firstgid: Cardinal;
    source: PUTF8Char;
    tileset: Ptmx_tileset;
    next: Ptmx_tileset_list;
  end;

  _tmx_shape = record
    points: PPDouble;
    points_len: Integer;
  end;

  _tmx_text = record
    fontfamily: PUTF8Char;
    pixelsize: Integer;
    color: UInt32;
    wrap: Integer;
    bold: Integer;
    italic: Integer;
    underline: Integer;
    strikeout: Integer;
    kerning: Integer;
    halign: tmx_horizontal_align;
    valign: tmx_vertical_align;
    text: PUTF8Char;
  end;

  P_anonymous_type_95 = ^_anonymous_type_95;
  _anonymous_type_95 = record
    case Integer of
      0: (gid: Integer);
      1: (shape: Ptmx_shape);
      2: (text: Ptmx_text);
  end;

  _tmx_obj = record
    id: Cardinal;
    obj_type: tmx_obj_type;
    x: Double;
    y: Double;
    width: Double;
    height: Double;
    content: _anonymous_type_95;
    visible: Integer;
    rotation: Double;
    name: PUTF8Char;
    type_: PUTF8Char;
    template_ref: Ptmx_template;
    properties: Ptmx_properties;
    next: Ptmx_object;
  end;

  _tmx_objgr = record
    color: UInt32;
    draworder: tmx_objgr_draworder;
    head: Ptmx_object;
  end;

  _tmx_templ = record
    is_embedded: Integer;
    tileset_ref: Ptmx_tileset_list;
    object_: Ptmx_object;
  end;

  layer_content = record
    case Integer of
      0: (gids: PUInt32);
      1: (objgr: Ptmx_object_group);
      2: (image: Ptmx_image);
      3: (group_head: Ptmx_layer);
  end;

  _tmx_layer = record
    id: Integer;
    name: PUTF8Char;
    opacity: Double;
    visible: Integer;
    offsetx: Integer;
    offsety: Integer;
    parallaxx: Double;
    parallaxy: Double;
    tintcolor: UInt32;
    type_: tmx_layer_type;
    content: layer_content;
    user_data: tmx_user_data;
    properties: Ptmx_properties;
    next: Ptmx_layer;
  end;

  _tmx_map = record
    orient: tmx_map_orient;
    width: Cardinal;
    height: Cardinal;
    tile_width: Cardinal;
    tile_height: Cardinal;
    stagger_index: tmx_stagger_index;
    stagger_axis: tmx_stagger_axis;
    hexsidelength: Integer;
    backgroundcolor: UInt32;
    renderorder: tmx_map_renderorder;
    properties: Ptmx_properties;
    ts_head: Ptmx_tileset_list;
    ly_head: Ptmx_layer;
    tilecount: Cardinal;
    tiles: PPtmx_tile;
    user_data: tmx_user_data;
  end;

  tmx_property = _tmx_prop;
  tmx_image = _tmx_img;
  tmx_anim_frame = _tmx_frame;
  tmx_tile = _tmx_tile;
  tmx_tileset = _tmx_ts;
  tmx_tileset_list = _tmx_ts_list;
  tmx_shape = _tmx_shape;
  tmx_object_group = _tmx_objgr;
  tmx_template = _tmx_templ;
  tmx_layer = _tmx_layer;
  tmx_map = _tmx_map;
  tmx_text = _tmx_text;
  tmx_object = _tmx_obj;

  tmx_read_functor = function(userdata: Pointer; buffer: PUTF8Char; len: Integer): Integer; cdecl;

  tmx_property_functor = procedure(property_: Ptmx_property; userdata: Pointer); cdecl;

  tmx_col_bytes = record
    r: UInt8;
    g: UInt8;
    b: UInt8;
    a: UInt8;
  end;

  tmx_col_floats = record
    r: Single;
    g: Single;
    b: Single;
    a: Single;
  end;

  Ptmx_resource_manager = Pointer;
  PPtmx_resource_manager = ^Ptmx_resource_manager;

  _tmx_error_codes = (
    E_NONE = 0,
    E_UNKN = 1,
    E_INVAL = 2,
    E_ALLOC = 8,
    E_ACCESS = 10,
    E_NOENT = 11,
    E_FORMAT = 12,
    E_ENCCMP = 13,
    E_FONCT = 16,
    E_BDATA = 20,
    E_ZDATA = 21,
    E_XDATA = 22,
    E_ZSDATA = 23,
    E_CDATA = 24,
    E_MISSEL = 30);
  P_tmx_error_codes = ^_tmx_error_codes;
  tmx_error_codes = _tmx_error_codes;
  PJSON_Object = Pointer;
  PPJSON_Object = ^PJSON_Object;
  PJSON_Array = Pointer;
  PPJSON_Array = ^PJSON_Array;
  PJSON_Value = Pointer;
  PPJSON_Value = ^PJSON_Value;

  json_value_types = (
    JSONError = -1,
    JSONNull = 1,
    JSONString = 2,
    JSONNumber = 3,
    JSONObject = 4,
    JSONArray = 5,
    JSONBoolean = 6);
  Pjson_value_type = ^json_value_type;
  JSON_Value_Type = Integer;

  json_result_t = (
    JSONSuccess = 0,
    JSONFailure = -1);
  Pjson_result_t = ^json_result_t;
  JSON_Status = Integer;

  JSON_Malloc_Function = function(p1: NativeUInt): Pointer; cdecl;

  JSON_Free_Function = procedure(p1: Pointer); cdecl;

  JSON_Number_Serialization_Function = function(num: Double; buf: PUTF8Char): Integer; cdecl;
  PNBN_Stream = Pointer;
  PPNBN_Stream = ^PNBN_Stream;
  PNBN_Connection = Pointer;
  PPNBN_Connection = ^PNBN_Connection;
  PNBN_Channel = Pointer;
  PPNBN_Channel = ^PNBN_Channel;

  NBN_MessageSerializer = function(p1: Pointer; p2: PNBN_Stream): Integer; cdecl;

  NBN_MessageBuilder = function(): Pointer; cdecl;

  NBN_MessageDestructor = procedure(p1: Pointer); cdecl;

  NBN_RPC_ParamType = (
    NBN_RPC_PARAM_INT = 0,
    NBN_RPC_PARAM_FLOAT = 1,
    NBN_RPC_PARAM_BOOL = 2,
    NBN_RPC_PARAM_STRING = 3);
  PNBN_RPC_ParamType = ^NBN_RPC_ParamType;

  NBN_RPC_Signature = record
    param_count: Cardinal;
    params: array [0..15] of NBN_RPC_ParamType;
  end;

  NBN_ConnectionStats = record
    ping: Double;
    total_lost_packets: Cardinal;
    packet_loss: Single;
    upload_bandwidth: Single;
    download_bandwidth: Single;
  end;

  NBN_OutgoingMessage = record
    type_: UInt8;
    ref_count: Cardinal;
    data: Pointer;
  end;

  NBN_MessageInfo = record
    type_: UInt8;
    data: Pointer;
    sender: PNBN_Connection;
  end;

  NBN_RPC_Func = procedure(p1: Cardinal; NBN_RPC_Param: PInteger; sender: PNBN_Connection); cdecl;

  NBN_ConnectionVector = record
    connections: PPNBN_Connection;
    count: Cardinal;
    capacity: Cardinal;
  end;

  _anonymous_type_96 = (
    NBN_CONNECTED = 2,
    NBN_DISCONNECTED = 3,
    NBN_MESSAGE_RECEIVED = 4);
  P_anonymous_type_96 = ^_anonymous_type_96;

  _anonymous_type_97 = (
    NBN_NEW_CONNECTION = 2,
    NBN_CLIENT_DISCONNECTED = 3,
    NBN_CLIENT_MESSAGE_RECEIVED = 4);
  P_anonymous_type_97 = ^_anonymous_type_97;

  NBN_GameServerStats = record
    upload_bandwidth: Single;
    download_bandwidth: Single;
  end;

  Ttmx_img_load_func = function(const path: PUTF8Char): Pointer; cdecl;
  Ttmx_img_free_func = procedure(address: Pointer); cdecl;
  Ttmx_alloc_func    = function(address: Pointer; len: NativeUInt): Pointer; cdecl;
  Ttmx_free_func     = procedure(address: Pointer); cdecl;
  Ptmx_img_load_func = ^Ttmx_img_load_func;
  Ptmx_img_free_func = ^Ttmx_img_free_func;
  Ptmx_alloc_func    = ^Ttmx_alloc_func;
  Ptmx_free_func     = ^Ttmx_free_func;

  SDL_TLSSet_destructor = procedure(p1: Pointer); cdecl;
  SDL_qsort_compare = function(const p1: Pointer; const p2: Pointer): Integer; cdecl;
  SDL_bsearch_compare = function(const p1: Pointer; const p2: Pointer): Integer; cdecl;
  nk_plot_function_value_getter = function(user: Pointer; index: Integer): Single; cdecl;
  nk_combo_callback_item_getter = procedure(p1: Pointer; p2: Integer; p3: PPUTF8Char); cdecl;
  nk_combobox_callback_item_getter = procedure(p1: Pointer; p2: Integer; p3: PPUTF8Char); cdecl;

const
  PLM_DEMUX_PACKET_PRIVATE: Integer = $BD;
  PLM_DEMUX_PACKET_AUDIO_1: Integer = $C0;
  PLM_DEMUX_PACKET_AUDIO_2: Integer = $C1;
  PLM_DEMUX_PACKET_AUDIO_3: Integer = $C2;
  PLM_DEMUX_PACKET_AUDIO_4: Integer = $C2;
  PLM_DEMUX_PACKET_VIDEO_1: Integer = $E0;

  SDL_INIT_EVERYTHING = Ord(SDL_INIT_TIMER) or Ord(SDL_INIT_AUDIO) or Ord(SDL_INIT_VIDEO) or Ord(SDL_INIT_EVENTS) or Ord(SDL_INIT_JOYSTICK) or Ord(SDL_INIT_HAPTIC) or Ord(SDL_INIT_GAMEPAD) or Ord(SDL_INIT_SENSOR);

var
  SDL_malloc: function(size: NativeUInt): Pointer; cdecl;
  SDL_calloc: function(nmemb: NativeUInt; size: NativeUInt): Pointer; cdecl;
  SDL_realloc: function(mem: Pointer; size: NativeUInt): Pointer; cdecl;
  SDL_free: procedure(mem: Pointer); cdecl;
  SDL_GetOriginalMemoryFunctions: procedure(malloc_func: PSDL_malloc_func; calloc_func: PSDL_calloc_func; realloc_func: PSDL_realloc_func; free_func: PSDL_free_func); cdecl;
  SDL_GetMemoryFunctions: procedure(malloc_func: PSDL_malloc_func; calloc_func: PSDL_calloc_func; realloc_func: PSDL_realloc_func; free_func: PSDL_free_func); cdecl;
  SDL_SetMemoryFunctions: function(malloc_func: SDL_malloc_func; calloc_func: SDL_calloc_func; realloc_func: SDL_realloc_func; free_func: SDL_free_func): Integer; cdecl;
  SDL_aligned_alloc: function(alignment: NativeUInt; size: NativeUInt): Pointer; cdecl;
  SDL_aligned_free: procedure(mem: Pointer); cdecl;
  SDL_GetNumAllocations: function(): Integer; cdecl;
  SDL_getenv: function(const name: PUTF8Char): PUTF8Char; cdecl;
  SDL_setenv: function(const name: PUTF8Char; const value: PUTF8Char; overwrite: Integer): Integer; cdecl;
  SDL_qsort: procedure(base: Pointer; nmemb: NativeUInt; size: NativeUInt; compare: SDL_qsort_compare); cdecl;
  SDL_bsearch: function(const key: Pointer; const base: Pointer; nmemb: NativeUInt; size: NativeUInt; compare: SDL_bsearch_compare): Pointer; cdecl;
  SDL_abs: function(x: Integer): Integer; cdecl;
  SDL_isalpha: function(x: Integer): Integer; cdecl;
  SDL_isalnum: function(x: Integer): Integer; cdecl;
  SDL_isblank: function(x: Integer): Integer; cdecl;
  SDL_iscntrl: function(x: Integer): Integer; cdecl;
  SDL_isdigit: function(x: Integer): Integer; cdecl;
  SDL_isxdigit: function(x: Integer): Integer; cdecl;
  SDL_ispunct: function(x: Integer): Integer; cdecl;
  SDL_isspace: function(x: Integer): Integer; cdecl;
  SDL_isupper: function(x: Integer): Integer; cdecl;
  SDL_islower: function(x: Integer): Integer; cdecl;
  SDL_isprint: function(x: Integer): Integer; cdecl;
  SDL_isgraph: function(x: Integer): Integer; cdecl;
  SDL_toupper: function(x: Integer): Integer; cdecl;
  SDL_tolower: function(x: Integer): Integer; cdecl;
  SDL_crc16: function(crc: Uint16; const data: Pointer; len: NativeUInt): Uint16; cdecl;
  SDL_crc32: function(crc: Uint32; const data: Pointer; len: NativeUInt): Uint32; cdecl;
  SDL_memset: function(dst: Pointer; c: Integer; len: NativeUInt): Pointer; cdecl;
  SDL_memset4: function(dst: Pointer; val: Uint32; dwords: NativeUInt): Pointer; cdecl;
  SDL_memcpy: function(dst: Pointer; const src: Pointer; len: NativeUInt): Pointer; cdecl;
  SDL_memmove: function(dst: Pointer; const src: Pointer; len: NativeUInt): Pointer; cdecl;
  SDL_memcmp: function(const s1: Pointer; const s2: Pointer; len: NativeUInt): Integer; cdecl;
  SDL_wcslen: function(const wstr: PWideChar): NativeUInt; cdecl;
  SDL_wcslcpy: function(dst: PWideChar; const src: PWideChar; maxlen: NativeUInt): NativeUInt; cdecl;
  SDL_wcslcat: function(dst: PWideChar; const src: PWideChar; maxlen: NativeUInt): NativeUInt; cdecl;
  SDL_wcsdup: function(const wstr: PWideChar): PWideChar; cdecl;
  SDL_wcsstr: function(const haystack: PWideChar; const needle: PWideChar): PWideChar; cdecl;
  SDL_wcscmp: function(const str1: PWideChar; const str2: PWideChar): Integer; cdecl;
  SDL_wcsncmp: function(const str1: PWideChar; const str2: PWideChar; maxlen: NativeUInt): Integer; cdecl;
  SDL_wcscasecmp: function(const str1: PWideChar; const str2: PWideChar): Integer; cdecl;
  SDL_wcsncasecmp: function(const str1: PWideChar; const str2: PWideChar; len: NativeUInt): Integer; cdecl;
  SDL_strlen: function(const str: PUTF8Char): NativeUInt; cdecl;
  SDL_strlcpy: function(dst: PUTF8Char; const src: PUTF8Char; maxlen: NativeUInt): NativeUInt; cdecl;
  SDL_utf8strlcpy: function(dst: PUTF8Char; const src: PUTF8Char; dst_bytes: NativeUInt): NativeUInt; cdecl;
  SDL_strlcat: function(dst: PUTF8Char; const src: PUTF8Char; maxlen: NativeUInt): NativeUInt; cdecl;
  SDL_strdup: function(const str: PUTF8Char): PUTF8Char; cdecl;
  SDL_strrev: function(str: PUTF8Char): PUTF8Char; cdecl;
  SDL_strupr: function(str: PUTF8Char): PUTF8Char; cdecl;
  SDL_strlwr: function(str: PUTF8Char): PUTF8Char; cdecl;
  SDL_strchr: function(const str: PUTF8Char; c: Integer): PUTF8Char; cdecl;
  SDL_strrchr: function(const str: PUTF8Char; c: Integer): PUTF8Char; cdecl;
  SDL_strstr: function(const haystack: PUTF8Char; const needle: PUTF8Char): PUTF8Char; cdecl;
  SDL_strcasestr: function(const haystack: PUTF8Char; const needle: PUTF8Char): PUTF8Char; cdecl;
  SDL_strtokr: function(s1: PUTF8Char; const s2: PUTF8Char; saveptr: PPUTF8Char): PUTF8Char; cdecl;
  SDL_utf8strlen: function(const str: PUTF8Char): NativeUInt; cdecl;
  SDL_utf8strnlen: function(const str: PUTF8Char; bytes: NativeUInt): NativeUInt; cdecl;
  SDL_itoa: function(value: Integer; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_uitoa: function(value: Cardinal; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_ltoa: function(value: Integer; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_ultoa: function(value: Cardinal; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_lltoa: function(value: Sint64; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_ulltoa: function(value: Uint64; str: PUTF8Char; radix: Integer): PUTF8Char; cdecl;
  SDL_atoi: function(const str: PUTF8Char): Integer; cdecl;
  SDL_atof: function(const str: PUTF8Char): Double; cdecl;
  SDL_strtol: function(const str: PUTF8Char; endp: PPUTF8Char; base: Integer): Integer; cdecl;
  SDL_strtoul: function(const str: PUTF8Char; endp: PPUTF8Char; base: Integer): Cardinal; cdecl;
  SDL_strtoll: function(const str: PUTF8Char; endp: PPUTF8Char; base: Integer): Sint64; cdecl;
  SDL_strtoull: function(const str: PUTF8Char; endp: PPUTF8Char; base: Integer): Uint64; cdecl;
  SDL_strtod: function(const str: PUTF8Char; endp: PPUTF8Char): Double; cdecl;
  SDL_strcmp: function(const str1: PUTF8Char; const str2: PUTF8Char): Integer; cdecl;
  SDL_strncmp: function(const str1: PUTF8Char; const str2: PUTF8Char; maxlen: NativeUInt): Integer; cdecl;
  SDL_strcasecmp: function(const str1: PUTF8Char; const str2: PUTF8Char): Integer; cdecl;
  SDL_strncasecmp: function(const str1: PUTF8Char; const str2: PUTF8Char; len: NativeUInt): Integer; cdecl;
  SDL_sscanf: function(const text: PUTF8Char; const fmt: PUTF8Char): Integer varargs; cdecl;
  SDL_vsscanf: function(const text: PUTF8Char; const fmt: PUTF8Char; ap: Pointer): Integer; cdecl;
  SDL_snprintf: function(text: PUTF8Char; maxlen: NativeUInt; const fmt: PUTF8Char): Integer varargs; cdecl;
  SDL_vsnprintf: function(text: PUTF8Char; maxlen: NativeUInt; const fmt: PUTF8Char; ap: Pointer): Integer; cdecl;
  SDL_asprintf: function(strp: PPUTF8Char; const fmt: PUTF8Char): Integer varargs; cdecl;
  SDL_vasprintf: function(strp: PPUTF8Char; const fmt: PUTF8Char; ap: Pointer): Integer; cdecl;
  SDL_acos: function(x: Double): Double; cdecl;
  SDL_acosf: function(x: Single): Single; cdecl;
  SDL_asin: function(x: Double): Double; cdecl;
  SDL_asinf: function(x: Single): Single; cdecl;
  SDL_atan: function(x: Double): Double; cdecl;
  SDL_atanf: function(x: Single): Single; cdecl;
  SDL_atan2: function(y: Double; x: Double): Double; cdecl;
  SDL_atan2f: function(y: Single; x: Single): Single; cdecl;
  SDL_ceil: function(x: Double): Double; cdecl;
  SDL_ceilf: function(x: Single): Single; cdecl;
  SDL_copysign: function(x: Double; y: Double): Double; cdecl;
  SDL_copysignf: function(x: Single; y: Single): Single; cdecl;
  SDL_cos: function(x: Double): Double; cdecl;
  SDL_cosf: function(x: Single): Single; cdecl;
  SDL_exp: function(x: Double): Double; cdecl;
  SDL_expf: function(x: Single): Single; cdecl;
  SDL_fabs: function(x: Double): Double; cdecl;
  SDL_fabsf: function(x: Single): Single; cdecl;
  SDL_floor: function(x: Double): Double; cdecl;
  SDL_floorf: function(x: Single): Single; cdecl;
  SDL_trunc: function(x: Double): Double; cdecl;
  SDL_truncf: function(x: Single): Single; cdecl;
  SDL_fmod: function(x: Double; y: Double): Double; cdecl;
  SDL_fmodf: function(x: Single; y: Single): Single; cdecl;
  SDL_log: function(x: Double): Double; cdecl;
  SDL_logf: function(x: Single): Single; cdecl;
  SDL_log10: function(x: Double): Double; cdecl;
  SDL_log10f: function(x: Single): Single; cdecl;
  SDL_modf: function(x: Double; y: PDouble): Double; cdecl;
  SDL_modff: function(x: Single; y: PSingle): Single; cdecl;
  SDL_pow: function(x: Double; y: Double): Double; cdecl;
  SDL_powf: function(x: Single; y: Single): Single; cdecl;
  SDL_round: function(x: Double): Double; cdecl;
  SDL_roundf: function(x: Single): Single; cdecl;
  SDL_lround: function(x: Double): Integer; cdecl;
  SDL_lroundf: function(x: Single): Integer; cdecl;
  SDL_scalbn: function(x: Double; n: Integer): Double; cdecl;
  SDL_scalbnf: function(x: Single; n: Integer): Single; cdecl;
  SDL_sin: function(x: Double): Double; cdecl;
  SDL_sinf: function(x: Single): Single; cdecl;
  SDL_sqrt: function(x: Double): Double; cdecl;
  SDL_sqrtf: function(x: Single): Single; cdecl;
  SDL_tan: function(x: Double): Double; cdecl;
  SDL_tanf: function(x: Single): Single; cdecl;
  SDL_iconv_open: function(const tocode: PUTF8Char; const fromcode: PUTF8Char): SDL_iconv_t; cdecl;
  SDL_iconv_close: function(cd: SDL_iconv_t): Integer; cdecl;
  SDL_iconv: function(cd: SDL_iconv_t; inbuf: PPUTF8Char; inbytesleft: PNativeUInt; outbuf: PPUTF8Char; outbytesleft: PNativeUInt): NativeUInt; cdecl;
  SDL_iconv_string: function(const tocode: PUTF8Char; const fromcode: PUTF8Char; const inbuf: PUTF8Char; inbytesleft: NativeUInt): PUTF8Char; cdecl;
  __debugbreak: procedure(); cdecl;
  SDL_ReportAssertion: function(p1: PSDL_AssertData; const p2: PUTF8Char; const p3: PUTF8Char; p4: Integer): SDL_AssertState; cdecl;
  SDL_SetAssertionHandler: procedure(handler: SDL_AssertionHandler; userdata: Pointer); cdecl;
  SDL_GetDefaultAssertionHandler: function(): SDL_AssertionHandler; cdecl;
  SDL_GetAssertionHandler: function(puserdata: PPointer): SDL_AssertionHandler; cdecl;
  SDL_GetAssertionReport: function(): PSDL_AssertData; cdecl;
  SDL_ResetAssertionReport: procedure(); cdecl;
  SDL_AtomicTryLock: function(lock: PSDL_SpinLock): SDL_bool; cdecl;
  SDL_AtomicLock: procedure(lock: PSDL_SpinLock); cdecl;
  SDL_AtomicUnlock: procedure(lock: PSDL_SpinLock); cdecl;
  SDL_MemoryBarrierReleaseFunction: procedure(); cdecl;
  SDL_MemoryBarrierAcquireFunction: procedure(); cdecl;
  SDL_AtomicCAS: function(a: PSDL_atomic_t; oldval: Integer; newval: Integer): SDL_bool; cdecl;
  SDL_AtomicSet: function(a: PSDL_atomic_t; v: Integer): Integer; cdecl;
  SDL_AtomicGet: function(a: PSDL_atomic_t): Integer; cdecl;
  SDL_AtomicAdd: function(a: PSDL_atomic_t; v: Integer): Integer; cdecl;
  SDL_AtomicCASPtr: function(a: PPointer; oldval: Pointer; newval: Pointer): SDL_bool; cdecl;
  SDL_AtomicSetPtr: function(a: PPointer; v: Pointer): Pointer; cdecl;
  SDL_AtomicGetPtr: function(a: PPointer): Pointer; cdecl;
  SDL_SetError: function(const fmt: PUTF8Char): Integer varargs; cdecl;
  SDL_GetError: function(): PUTF8Char; cdecl;
  SDL_GetErrorMsg: function(errstr: PUTF8Char; maxlen: Integer): PUTF8Char; cdecl;
  SDL_ClearError: procedure(); cdecl;
  SDL_Error: function(code: SDL_errorcode): Integer; cdecl;
  SDL_CreateMutex: function(): PSDL_mutex; cdecl;
  SDL_LockMutex: function(mutex: PSDL_mutex): Integer; cdecl;
  SDL_TryLockMutex: function(mutex: PSDL_mutex): Integer; cdecl;
  SDL_UnlockMutex: function(mutex: PSDL_mutex): Integer; cdecl;
  SDL_DestroyMutex: procedure(mutex: PSDL_mutex); cdecl;
  SDL_CreateSemaphore: function(initial_value: Uint32): PSDL_sem; cdecl;
  SDL_DestroySemaphore: procedure(sem: PSDL_sem); cdecl;
  SDL_SemWait: function(sem: PSDL_sem): Integer; cdecl;
  SDL_SemTryWait: function(sem: PSDL_sem): Integer; cdecl;
  SDL_SemWaitTimeout: function(sem: PSDL_sem; timeoutMS: Sint32): Integer; cdecl;
  SDL_SemPost: function(sem: PSDL_sem): Integer; cdecl;
  SDL_SemValue: function(sem: PSDL_sem): Uint32; cdecl;
  SDL_CreateCond: function(): PSDL_cond; cdecl;
  SDL_DestroyCond: procedure(cond: PSDL_cond); cdecl;
  SDL_CondSignal: function(cond: PSDL_cond): Integer; cdecl;
  SDL_CondBroadcast: function(cond: PSDL_cond): Integer; cdecl;
  SDL_CondWait: function(cond: PSDL_cond; mutex: PSDL_mutex): Integer; cdecl;
  SDL_CondWaitTimeout: function(cond: PSDL_cond; mutex: PSDL_mutex; timeoutMS: Sint32): Integer; cdecl;
  SDL_CreateThread: function(fn: SDL_ThreadFunction; const name: PUTF8Char; data: Pointer; pfnBeginThread: pfnSDL_CurrentBeginThread; pfnEndThread: pfnSDL_CurrentEndThread): PSDL_Thread; cdecl;
  SDL_CreateThreadWithStackSize: function(fn: SDL_ThreadFunction; const name: PUTF8Char; const stacksize: NativeUInt; data: Pointer; pfnBeginThread: pfnSDL_CurrentBeginThread; pfnEndThread: pfnSDL_CurrentEndThread): PSDL_Thread; cdecl;
  SDL_GetThreadName: function(thread: PSDL_Thread): PUTF8Char; cdecl;
  SDL_ThreadID: function(): SDL_threadID_; cdecl;
  SDL_GetThreadID: function(thread: PSDL_Thread): SDL_threadID_; cdecl;
  SDL_SetThreadPriority: function(priority: SDL_ThreadPriority): Integer; cdecl;
  SDL_WaitThread: procedure(thread: PSDL_Thread; status: PInteger); cdecl;
  SDL_DetachThread: procedure(thread: PSDL_Thread); cdecl;
  SDL_TLSCreate: function(): SDL_TLSID; cdecl;
  SDL_TLSGet: function(id: SDL_TLSID): Pointer; cdecl;
  SDL_TLSSet: function(id: SDL_TLSID; const value: Pointer; destructor_: SDL_TLSSet_destructor): Integer; cdecl;
  SDL_TLSCleanup: procedure(); cdecl;
  SDL_RWFromFile: function(const file_: PUTF8Char; const mode: PUTF8Char): PSDL_RWops; cdecl;
  SDL_RWFromMem: function(mem: Pointer; size: Integer): PSDL_RWops; cdecl;
  SDL_RWFromConstMem: function(const mem: Pointer; size: Integer): PSDL_RWops; cdecl;
  SDL_CreateRW: function(): PSDL_RWops; cdecl;
  SDL_DestroyRW: procedure(area: PSDL_RWops); cdecl;
  SDL_RWsize: function(context: PSDL_RWops): Sint64; cdecl;
  SDL_RWseek: function(context: PSDL_RWops; offset: Sint64; whence: Integer): Sint64; cdecl;
  SDL_RWtell: function(context: PSDL_RWops): Sint64; cdecl;
  SDL_RWread: function(context: PSDL_RWops; ptr: Pointer; size: Sint64): Sint64; cdecl;
  SDL_RWwrite: function(context: PSDL_RWops; const ptr: Pointer; size: Sint64): Sint64; cdecl;
  SDL_RWclose: function(context: PSDL_RWops): Integer; cdecl;
  SDL_LoadFile_RW: function(src: PSDL_RWops; datasize: PNativeUInt; freesrc: Integer): Pointer; cdecl;
  SDL_LoadFile: function(const file_: PUTF8Char; datasize: PNativeUInt): Pointer; cdecl;
  SDL_ReadU8: function(src: PSDL_RWops): Uint8; cdecl;
  SDL_ReadLE16: function(src: PSDL_RWops): Uint16; cdecl;
  SDL_ReadBE16: function(src: PSDL_RWops): Uint16; cdecl;
  SDL_ReadLE32: function(src: PSDL_RWops): Uint32; cdecl;
  SDL_ReadBE32: function(src: PSDL_RWops): Uint32; cdecl;
  SDL_ReadLE64: function(src: PSDL_RWops): Uint64; cdecl;
  SDL_ReadBE64: function(src: PSDL_RWops): Uint64; cdecl;
  SDL_WriteU8: function(dst: PSDL_RWops; value: Uint8): NativeUInt; cdecl;
  SDL_WriteLE16: function(dst: PSDL_RWops; value: Uint16): NativeUInt; cdecl;
  SDL_WriteBE16: function(dst: PSDL_RWops; value: Uint16): NativeUInt; cdecl;
  SDL_WriteLE32: function(dst: PSDL_RWops; value: Uint32): NativeUInt; cdecl;
  SDL_WriteBE32: function(dst: PSDL_RWops; value: Uint32): NativeUInt; cdecl;
  SDL_WriteLE64: function(dst: PSDL_RWops; value: Uint64): NativeUInt; cdecl;
  SDL_WriteBE64: function(dst: PSDL_RWops; value: Uint64): NativeUInt; cdecl;
  SDL_GetNumAudioDrivers: function(): Integer; cdecl;
  SDL_GetAudioDriver: function(index: Integer): PUTF8Char; cdecl;
  SDL_GetCurrentAudioDriver: function(): PUTF8Char; cdecl;
  SDL_GetNumAudioDevices: function(iscapture: Integer): Integer; cdecl;
  SDL_GetAudioDeviceName: function(index: Integer; iscapture: Integer): PUTF8Char; cdecl;
  SDL_GetAudioDeviceSpec: function(index: Integer; iscapture: Integer; spec: PSDL_AudioSpec): Integer; cdecl;
  SDL_GetDefaultAudioInfo: function(name: PPUTF8Char; spec: PSDL_AudioSpec; iscapture: Integer): Integer; cdecl;
  SDL_OpenAudioDevice: function(const device: PUTF8Char; iscapture: Integer; const desired: PSDL_AudioSpec; obtained: PSDL_AudioSpec; allowed_changes: Integer): SDL_AudioDeviceID; cdecl;
  SDL_GetAudioDeviceStatus: function(dev: SDL_AudioDeviceID): SDL_AudioStatus; cdecl;
  SDL_PlayAudioDevice: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_PauseAudioDevice: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_LoadWAV_RW: function(src: PSDL_RWops; freesrc: Integer; spec: PSDL_AudioSpec; audio_buf: PPUint8; audio_len: PUint32): PSDL_AudioSpec; cdecl;
  SDL_CreateAudioStream: function(src_format: SDL_AudioFormat; src_channels: Uint8; src_rate: Integer; dst_format: SDL_AudioFormat; dst_channels: Uint8; dst_rate: Integer): PSDL_AudioStream; cdecl;
  SDL_PutAudioStreamData: function(stream: PSDL_AudioStream; const buf: Pointer; len: Integer): Integer; cdecl;
  SDL_GetAudioStreamData: function(stream: PSDL_AudioStream; buf: Pointer; len: Integer): Integer; cdecl;
  SDL_GetAudioStreamAvailable: function(stream: PSDL_AudioStream): Integer; cdecl;
  SDL_FlushAudioStream: function(stream: PSDL_AudioStream): Integer; cdecl;
  SDL_ClearAudioStream: procedure(stream: PSDL_AudioStream); cdecl;
  SDL_DestroyAudioStream: procedure(stream: PSDL_AudioStream); cdecl;
  SDL_MixAudioFormat: procedure(dst: PUint8; const src: PUint8; format: SDL_AudioFormat; len: Uint32; volume: Integer); cdecl;
  SDL_QueueAudio: function(dev: SDL_AudioDeviceID; const data: Pointer; len: Uint32): Integer; cdecl;
  SDL_DequeueAudio: function(dev: SDL_AudioDeviceID; data: Pointer; len: Uint32): Uint32; cdecl;
  SDL_GetQueuedAudioSize: function(dev: SDL_AudioDeviceID): Uint32; cdecl;
  SDL_ClearQueuedAudio: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_LockAudioDevice: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_UnlockAudioDevice: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_CloseAudioDevice: procedure(dev: SDL_AudioDeviceID); cdecl;
  SDL_ConvertAudioSamples: function(src_format: SDL_AudioFormat; src_channels: Uint8; src_rate: Integer; src_len: Integer; src_data: PUint8; dst_format: SDL_AudioFormat; dst_channels: Uint8; dst_rate: Integer; dst_len: PInteger; dst_data: PPUint8): Integer; cdecl;
  SDL_ComposeCustomBlendMode: function(srcColorFactor: SDL_BlendFactor; dstColorFactor: SDL_BlendFactor; colorOperation: SDL_BlendOperation; srcAlphaFactor: SDL_BlendFactor; dstAlphaFactor: SDL_BlendFactor; alphaOperation: SDL_BlendOperation): SDL_BlendMode; cdecl;
  SDL_SetClipboardText: function(const text: PUTF8Char): Integer; cdecl;
  SDL_GetClipboardText: function(): PUTF8Char; cdecl;
  SDL_HasClipboardText: function(): SDL_bool; cdecl;
  SDL_SetPrimarySelectionText: function(const text: PUTF8Char): Integer; cdecl;
  SDL_GetPrimarySelectionText: function(): PUTF8Char; cdecl;
  SDL_HasPrimarySelectionText: function(): SDL_bool; cdecl;
  SDL_GetCPUCount: function(): Integer; cdecl;
  SDL_GetCPUCacheLineSize: function(): Integer; cdecl;
  SDL_HasRDTSC: function(): SDL_bool; cdecl;
  SDL_HasAltiVec: function(): SDL_bool; cdecl;
  SDL_HasMMX: function(): SDL_bool; cdecl;
  SDL_HasSSE: function(): SDL_bool; cdecl;
  SDL_HasSSE2: function(): SDL_bool; cdecl;
  SDL_HasSSE3: function(): SDL_bool; cdecl;
  SDL_HasSSE41: function(): SDL_bool; cdecl;
  SDL_HasSSE42: function(): SDL_bool; cdecl;
  SDL_HasAVX: function(): SDL_bool; cdecl;
  SDL_HasAVX2: function(): SDL_bool; cdecl;
  SDL_HasAVX512F: function(): SDL_bool; cdecl;
  SDL_HasARMSIMD: function(): SDL_bool; cdecl;
  SDL_HasNEON: function(): SDL_bool; cdecl;
  SDL_HasLSX: function(): SDL_bool; cdecl;
  SDL_HasLASX: function(): SDL_bool; cdecl;
  SDL_GetSystemRAM: function(): Integer; cdecl;
  SDL_SIMDGetAlignment: function(): NativeUInt; cdecl;
  SDL_GetSensors: function(count: PInteger): PSDL_SensorID; cdecl;
  SDL_GetSensorInstanceName: function(instance_id: SDL_SensorID): PUTF8Char; cdecl;
  SDL_GetSensorInstanceType: function(instance_id: SDL_SensorID): SDL_SensorType; cdecl;
  SDL_GetSensorInstanceNonPortableType: function(instance_id: SDL_SensorID): Integer; cdecl;
  SDL_OpenSensor: function(instance_id: SDL_SensorID): PSDL_Sensor; cdecl;
  SDL_GetSensorFromInstanceID: function(instance_id: SDL_SensorID): PSDL_Sensor; cdecl;
  SDL_GetSensorName: function(sensor: PSDL_Sensor): PUTF8Char; cdecl;
  SDL_GetSensorType: function(sensor: PSDL_Sensor): SDL_SensorType; cdecl;
  SDL_GetSensorNonPortableType: function(sensor: PSDL_Sensor): Integer; cdecl;
  SDL_GetSensorInstanceID: function(sensor: PSDL_Sensor): SDL_SensorID; cdecl;
  SDL_GetSensorData: function(sensor: PSDL_Sensor; data: PSingle; num_values: Integer): Integer; cdecl;
  SDL_CloseSensor: procedure(sensor: PSDL_Sensor); cdecl;
  SDL_UpdateSensors: procedure(); cdecl;
  SDL_GUIDToString: procedure(guid: SDL_GUID; pszGUID: PUTF8Char; cbGUID: Integer); cdecl;
  SDL_GUIDFromString: function(const pchGUID: PUTF8Char): SDL_GUID; cdecl;
  SDL_LockJoysticks: procedure(); cdecl;
  SDL_UnlockJoysticks: procedure(); cdecl;
  SDL_GetJoysticks: function(count: PInteger): PSDL_JoystickID; cdecl;
  SDL_GetJoystickInstanceName: function(instance_id: SDL_JoystickID): PUTF8Char; cdecl;
  SDL_GetJoystickInstancePath: function(instance_id: SDL_JoystickID): PUTF8Char; cdecl;
  SDL_GetJoystickInstancePlayerIndex: function(instance_id: SDL_JoystickID): Integer; cdecl;
  SDL_GetJoystickInstanceGUID: function(instance_id: SDL_JoystickID): SDL_JoystickGUID; cdecl;
  SDL_GetJoystickInstanceVendor: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetJoystickInstanceProduct: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetJoystickInstanceProductVersion: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetJoystickInstanceType: function(instance_id: SDL_JoystickID): SDL_JoystickType; cdecl;
  SDL_OpenJoystick: function(instance_id: SDL_JoystickID): PSDL_Joystick; cdecl;
  SDL_GetJoystickFromInstanceID: function(instance_id: SDL_JoystickID): PSDL_Joystick; cdecl;
  SDL_GetJoystickFromPlayerIndex: function(player_index: Integer): PSDL_Joystick; cdecl;
  SDL_AttachVirtualJoystick: function(type_: SDL_JoystickType; naxes: Integer; nbuttons: Integer; nhats: Integer): SDL_JoystickID; cdecl;
  SDL_AttachVirtualJoystickEx: function(const desc: PSDL_VirtualJoystickDesc): SDL_JoystickID; cdecl;
  SDL_DetachVirtualJoystick: function(instance_id: SDL_JoystickID): Integer; cdecl;
  SDL_IsJoystickVirtual: function(instance_id: SDL_JoystickID): SDL_bool; cdecl;
  SDL_SetJoystickVirtualAxis: function(joystick: PSDL_Joystick; axis: Integer; value: Sint16): Integer; cdecl;
  SDL_SetJoystickVirtualButton: function(joystick: PSDL_Joystick; button: Integer; value: Uint8): Integer; cdecl;
  SDL_SetJoystickVirtualHat: function(joystick: PSDL_Joystick; hat: Integer; value: Uint8): Integer; cdecl;
  SDL_GetJoystickName: function(joystick: PSDL_Joystick): PUTF8Char; cdecl;
  SDL_GetJoystickPath: function(joystick: PSDL_Joystick): PUTF8Char; cdecl;
  SDL_GetJoystickPlayerIndex: function(joystick: PSDL_Joystick): Integer; cdecl;
  SDL_SetJoystickPlayerIndex: procedure(joystick: PSDL_Joystick; player_index: Integer); cdecl;
  SDL_GetJoystickGUID: function(joystick: PSDL_Joystick): SDL_JoystickGUID; cdecl;
  SDL_GetJoystickVendor: function(joystick: PSDL_Joystick): Uint16; cdecl;
  SDL_GetJoystickProduct: function(joystick: PSDL_Joystick): Uint16; cdecl;
  SDL_GetJoystickProductVersion: function(joystick: PSDL_Joystick): Uint16; cdecl;
  SDL_GetJoystickFirmwareVersion: function(joystick: PSDL_Joystick): Uint16; cdecl;
  SDL_GetJoystickSerial: function(joystick: PSDL_Joystick): PUTF8Char; cdecl;
  SDL_GetJoystickType: function(joystick: PSDL_Joystick): SDL_JoystickType; cdecl;
  SDL_GetJoystickGUIDString: procedure(guid: SDL_JoystickGUID; pszGUID: PUTF8Char; cbGUID: Integer); cdecl;
  SDL_GetJoystickGUIDFromString: function(const pchGUID: PUTF8Char): SDL_JoystickGUID; cdecl;
  SDL_GetJoystickGUIDInfo: procedure(guid: SDL_JoystickGUID; vendor: PUint16; product: PUint16; version: PUint16; crc16: PUint16); cdecl;
  SDL_JoystickConnected: function(joystick: PSDL_Joystick): SDL_bool; cdecl;
  SDL_GetJoystickInstanceID: function(joystick: PSDL_Joystick): SDL_JoystickID; cdecl;
  SDL_GetNumJoystickAxes: function(joystick: PSDL_Joystick): Integer; cdecl;
  SDL_GetNumJoystickHats: function(joystick: PSDL_Joystick): Integer; cdecl;
  SDL_GetNumJoystickButtons: function(joystick: PSDL_Joystick): Integer; cdecl;
  SDL_SetJoystickEventsEnabled: procedure(enabled: SDL_bool); cdecl;
  SDL_JoystickEventsEnabled: function(): SDL_bool; cdecl;
  SDL_UpdateJoysticks: procedure(); cdecl;
  SDL_GetJoystickAxis: function(joystick: PSDL_Joystick; axis: Integer): Sint16; cdecl;
  SDL_GetJoystickAxisInitialState: function(joystick: PSDL_Joystick; axis: Integer; state: PSint16): SDL_bool; cdecl;
  SDL_GetJoystickHat: function(joystick: PSDL_Joystick; hat: Integer): Uint8; cdecl;
  SDL_GetJoystickButton: function(joystick: PSDL_Joystick; button: Integer): Uint8; cdecl;
  SDL_RumbleJoystick: function(joystick: PSDL_Joystick; low_frequency_rumble: Uint16; high_frequency_rumble: Uint16; duration_ms: Uint32): Integer; cdecl;
  SDL_RumbleJoystickTriggers: function(joystick: PSDL_Joystick; left_rumble: Uint16; right_rumble: Uint16; duration_ms: Uint32): Integer; cdecl;
  SDL_JoystickHasLED: function(joystick: PSDL_Joystick): SDL_bool; cdecl;
  SDL_JoystickHasRumble: function(joystick: PSDL_Joystick): SDL_bool; cdecl;
  SDL_JoystickHasRumbleTriggers: function(joystick: PSDL_Joystick): SDL_bool; cdecl;
  SDL_SetJoystickLED: function(joystick: PSDL_Joystick; red: Uint8; green: Uint8; blue: Uint8): Integer; cdecl;
  SDL_SendJoystickEffect: function(joystick: PSDL_Joystick; const data: Pointer; size: Integer): Integer; cdecl;
  SDL_CloseJoystick: procedure(joystick: PSDL_Joystick); cdecl;
  SDL_GetJoystickPowerLevel: function(joystick: PSDL_Joystick): SDL_JoystickPowerLevel; cdecl;
  SDL_AddGamepadMapping: function(const mappingString: PUTF8Char): Integer; cdecl;
  SDL_AddGamepadMappingsFromRW: function(rw: PSDL_RWops; freerw: Integer): Integer; cdecl;
  SDL_GetNumGamepadMappings: function(): Integer; cdecl;
  SDL_GetGamepadMappingForIndex: function(mapping_index: Integer): PUTF8Char; cdecl;
  SDL_GetGamepadMappingForGUID: function(guid: SDL_JoystickGUID): PUTF8Char; cdecl;
  SDL_GetGamepadMapping: function(gamepad: PSDL_Gamepad): PUTF8Char; cdecl;
  SDL_GetGamepads: function(count: PInteger): PSDL_JoystickID; cdecl;
  SDL_IsGamepad: function(instance_id: SDL_JoystickID): SDL_bool; cdecl;
  SDL_GetGamepadInstanceName: function(instance_id: SDL_JoystickID): PUTF8Char; cdecl;
  SDL_GetGamepadInstancePath: function(instance_id: SDL_JoystickID): PUTF8Char; cdecl;
  SDL_GetGamepadInstancePlayerIndex: function(instance_id: SDL_JoystickID): Integer; cdecl;
  SDL_GetGamepadInstanceGUID: function(instance_id: SDL_JoystickID): SDL_JoystickGUID; cdecl;
  SDL_GetGamepadInstanceVendor: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetGamepadInstanceProduct: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetGamepadInstanceProductVersion: function(instance_id: SDL_JoystickID): Uint16; cdecl;
  SDL_GetGamepadInstanceType: function(instance_id: SDL_JoystickID): SDL_GamepadType; cdecl;
  SDL_GetGamepadInstanceMapping: function(instance_id: SDL_JoystickID): PUTF8Char; cdecl;
  SDL_OpenGamepad: function(instance_id: SDL_JoystickID): PSDL_Gamepad; cdecl;
  SDL_GetGamepadFromInstanceID: function(instance_id: SDL_JoystickID): PSDL_Gamepad; cdecl;
  SDL_GetGamepadFromPlayerIndex: function(player_index: Integer): PSDL_Gamepad; cdecl;
  SDL_GetGamepadName: function(gamepad: PSDL_Gamepad): PUTF8Char; cdecl;
  SDL_GetGamepadPath: function(gamepad: PSDL_Gamepad): PUTF8Char; cdecl;
  SDL_GetGamepadType: function(gamepad: PSDL_Gamepad): SDL_GamepadType; cdecl;
  SDL_GetGamepadPlayerIndex: function(gamepad: PSDL_Gamepad): Integer; cdecl;
  SDL_SetGamepadPlayerIndex: procedure(gamepad: PSDL_Gamepad; player_index: Integer); cdecl;
  SDL_GetGamepadVendor: function(gamepad: PSDL_Gamepad): Uint16; cdecl;
  SDL_GetGamepadProduct: function(gamepad: PSDL_Gamepad): Uint16; cdecl;
  SDL_GetGamepadProductVersion: function(gamepad: PSDL_Gamepad): Uint16; cdecl;
  SDL_GetGamepadFirmwareVersion: function(gamepad: PSDL_Gamepad): Uint16; cdecl;
  SDL_GetGamepadSerial: function(gamepad: PSDL_Gamepad): PUTF8Char; cdecl;
  SDL_GamepadConnected: function(gamepad: PSDL_Gamepad): SDL_bool; cdecl;
  SDL_GetGamepadJoystick: function(gamepad: PSDL_Gamepad): PSDL_Joystick; cdecl;
  SDL_SetGamepadEventsEnabled: procedure(enabled: SDL_bool); cdecl;
  SDL_GamepadEventsEnabled: function(): SDL_bool; cdecl;
  SDL_UpdateGamepads: procedure(); cdecl;
  SDL_GetGamepadAxisFromString: function(const str: PUTF8Char): SDL_GamepadAxis; cdecl;
  SDL_GetGamepadStringForAxis: function(axis: SDL_GamepadAxis): PUTF8Char; cdecl;
  SDL_GetGamepadBindForAxis: function(gamepad: PSDL_Gamepad; axis: SDL_GamepadAxis): SDL_GamepadBinding; cdecl;
  SDL_GamepadHasAxis: function(gamepad: PSDL_Gamepad; axis: SDL_GamepadAxis): SDL_bool; cdecl;
  SDL_GetGamepadAxis: function(gamepad: PSDL_Gamepad; axis: SDL_GamepadAxis): Sint16; cdecl;
  SDL_GetGamepadButtonFromString: function(const str: PUTF8Char): SDL_GamepadButton; cdecl;
  SDL_GetGamepadStringForButton: function(button: SDL_GamepadButton): PUTF8Char; cdecl;
  SDL_GetGamepadBindForButton: function(gamepad: PSDL_Gamepad; button: SDL_GamepadButton): SDL_GamepadBinding; cdecl;
  SDL_GamepadHasButton: function(gamepad: PSDL_Gamepad; button: SDL_GamepadButton): SDL_bool; cdecl;
  SDL_GetGamepadButton: function(gamepad: PSDL_Gamepad; button: SDL_GamepadButton): Uint8; cdecl;
  SDL_GetNumGamepadTouchpads: function(gamepad: PSDL_Gamepad): Integer; cdecl;
  SDL_GetNumGamepadTouchpadFingers: function(gamepad: PSDL_Gamepad; touchpad: Integer): Integer; cdecl;
  SDL_GetGamepadTouchpadFinger: function(gamepad: PSDL_Gamepad; touchpad: Integer; finger: Integer; state: PUint8; x: PSingle; y: PSingle; pressure: PSingle): Integer; cdecl;
  SDL_GamepadHasSensor: function(gamepad: PSDL_Gamepad; type_: SDL_SensorType): SDL_bool; cdecl;
  SDL_SetGamepadSensorEnabled: function(gamepad: PSDL_Gamepad; type_: SDL_SensorType; enabled: SDL_bool): Integer; cdecl;
  SDL_GamepadSensorEnabled: function(gamepad: PSDL_Gamepad; type_: SDL_SensorType): SDL_bool; cdecl;
  SDL_GetGamepadSensorDataRate: function(gamepad: PSDL_Gamepad; type_: SDL_SensorType): Single; cdecl;
  SDL_GetGamepadSensorData: function(gamepad: PSDL_Gamepad; type_: SDL_SensorType; data: PSingle; num_values: Integer): Integer; cdecl;
  SDL_RumbleGamepad: function(gamepad: PSDL_Gamepad; low_frequency_rumble: Uint16; high_frequency_rumble: Uint16; duration_ms: Uint32): Integer; cdecl;
  SDL_RumbleGamepadTriggers: function(gamepad: PSDL_Gamepad; left_rumble: Uint16; right_rumble: Uint16; duration_ms: Uint32): Integer; cdecl;
  SDL_GamepadHasLED: function(gamepad: PSDL_Gamepad): SDL_bool; cdecl;
  SDL_GamepadHasRumble: function(gamepad: PSDL_Gamepad): SDL_bool; cdecl;
  SDL_GamepadHasRumbleTriggers: function(gamepad: PSDL_Gamepad): SDL_bool; cdecl;
  SDL_SetGamepadLED: function(gamepad: PSDL_Gamepad; red: Uint8; green: Uint8; blue: Uint8): Integer; cdecl;
  SDL_SendGamepadEffect: function(gamepad: PSDL_Gamepad; const data: Pointer; size: Integer): Integer; cdecl;
  SDL_CloseGamepad: procedure(gamepad: PSDL_Gamepad); cdecl;
  SDL_GetGamepadAppleSFSymbolsNameForButton: function(gamepad: PSDL_Gamepad; button: SDL_GamepadButton): PUTF8Char; cdecl;
  SDL_GetGamepadAppleSFSymbolsNameForAxis: function(gamepad: PSDL_Gamepad; axis: SDL_GamepadAxis): PUTF8Char; cdecl;
  SDL_GetPixelFormatName: function(format: Uint32): PUTF8Char; cdecl;
  SDL_GetMasksForPixelFormatEnum: function(format: Uint32; bpp: PInteger; Rmask: PUint32; Gmask: PUint32; Bmask: PUint32; Amask: PUint32): SDL_bool; cdecl;
  SDL_GetPixelFormatEnumForMasks: function(bpp: Integer; Rmask: Uint32; Gmask: Uint32; Bmask: Uint32; Amask: Uint32): Uint32; cdecl;
  SDL_CreatePixelFormat: function(pixel_format: Uint32): PSDL_PixelFormat; cdecl;
  SDL_DestroyPixelFormat: procedure(format: PSDL_PixelFormat); cdecl;
  SDL_CreatePalette: function(ncolors: Integer): PSDL_Palette; cdecl;
  SDL_SetPixelFormatPalette: function(format: PSDL_PixelFormat; palette: PSDL_Palette): Integer; cdecl;
  SDL_SetPaletteColors: function(palette: PSDL_Palette; const colors: PSDL_Color; firstcolor: Integer; ncolors: Integer): Integer; cdecl;
  SDL_DestroyPalette: procedure(palette: PSDL_Palette); cdecl;
  SDL_MapRGB: function(const format: PSDL_PixelFormat; r: Uint8; g: Uint8; b: Uint8): Uint32; cdecl;
  SDL_MapRGBA: function(const format: PSDL_PixelFormat; r: Uint8; g: Uint8; b: Uint8; a: Uint8): Uint32; cdecl;
  SDL_GetRGB: procedure(pixel: Uint32; const format: PSDL_PixelFormat; r: PUint8; g: PUint8; b: PUint8); cdecl;
  SDL_GetRGBA: procedure(pixel: Uint32; const format: PSDL_PixelFormat; r: PUint8; g: PUint8; b: PUint8; a: PUint8); cdecl;
  SDL_HasRectIntersection: function(const A: PSDL_Rect; const B: PSDL_Rect): SDL_bool; cdecl;
  SDL_GetRectIntersection: function(const A: PSDL_Rect; const B: PSDL_Rect; result: PSDL_Rect): SDL_bool; cdecl;
  SDL_GetRectUnion: procedure(const A: PSDL_Rect; const B: PSDL_Rect; result: PSDL_Rect); cdecl;
  SDL_GetRectEnclosingPoints: function(const points: PSDL_Point; count: Integer; const clip: PSDL_Rect; result: PSDL_Rect): SDL_bool; cdecl;
  SDL_GetRectAndLineIntersection: function(const rect: PSDL_Rect; X1: PInteger; Y1: PInteger; X2: PInteger; Y2: PInteger): SDL_bool; cdecl;
  SDL_HasRectIntersectionFloat: function(const A: PSDL_FRect; const B: PSDL_FRect): SDL_bool; cdecl;
  SDL_GetRectIntersectionFloat: function(const A: PSDL_FRect; const B: PSDL_FRect; result: PSDL_FRect): SDL_bool; cdecl;
  SDL_GetRectUnionFloat: procedure(const A: PSDL_FRect; const B: PSDL_FRect; result: PSDL_FRect); cdecl;
  SDL_GetRectEnclosingPointsFloat: function(const points: PSDL_FPoint; count: Integer; const clip: PSDL_FRect; result: PSDL_FRect): SDL_bool; cdecl;
  SDL_GetRectAndLineIntersectionFloat: function(const rect: PSDL_FRect; X1: PSingle; Y1: PSingle; X2: PSingle; Y2: PSingle): SDL_bool; cdecl;
  SDL_CreateSurface: function(width: Integer; height: Integer; format: Uint32): PSDL_Surface; cdecl;
  SDL_CreateSurfaceFrom: function(pixels: Pointer; width: Integer; height: Integer; pitch: Integer; format: Uint32): PSDL_Surface; cdecl;
  SDL_DestroySurface: procedure(surface: PSDL_Surface); cdecl;
  SDL_SetSurfacePalette: function(surface: PSDL_Surface; palette: PSDL_Palette): Integer; cdecl;
  SDL_LockSurface: function(surface: PSDL_Surface): Integer; cdecl;
  SDL_UnlockSurface: procedure(surface: PSDL_Surface); cdecl;
  SDL_LoadBMP_RW: function(src: PSDL_RWops; freesrc: Integer): PSDL_Surface; cdecl;
  SDL_SaveBMP_RW: function(surface: PSDL_Surface; dst: PSDL_RWops; freedst: Integer): Integer; cdecl;
  SDL_SetSurfaceRLE: function(surface: PSDL_Surface; flag: Integer): Integer; cdecl;
  SDL_SurfaceHasRLE: function(surface: PSDL_Surface): SDL_bool; cdecl;
  SDL_SetSurfaceColorKey: function(surface: PSDL_Surface; flag: Integer; key: Uint32): Integer; cdecl;
  SDL_SurfaceHasColorKey: function(surface: PSDL_Surface): SDL_bool; cdecl;
  SDL_GetSurfaceColorKey: function(surface: PSDL_Surface; key: PUint32): Integer; cdecl;
  SDL_SetSurfaceColorMod: function(surface: PSDL_Surface; r: Uint8; g: Uint8; b: Uint8): Integer; cdecl;
  SDL_GetSurfaceColorMod: function(surface: PSDL_Surface; r: PUint8; g: PUint8; b: PUint8): Integer; cdecl;
  SDL_SetSurfaceAlphaMod: function(surface: PSDL_Surface; alpha: Uint8): Integer; cdecl;
  SDL_GetSurfaceAlphaMod: function(surface: PSDL_Surface; alpha: PUint8): Integer; cdecl;
  SDL_SetSurfaceBlendMode: function(surface: PSDL_Surface; blendMode: SDL_BlendMode): Integer; cdecl;
  SDL_GetSurfaceBlendMode: function(surface: PSDL_Surface; blendMode: PSDL_BlendMode): Integer; cdecl;
  SDL_SetSurfaceClipRect: function(surface: PSDL_Surface; const rect: PSDL_Rect): SDL_bool; cdecl;
  SDL_GetSurfaceClipRect: procedure(surface: PSDL_Surface; rect: PSDL_Rect); cdecl;
  SDL_DuplicateSurface: function(surface: PSDL_Surface): PSDL_Surface; cdecl;
  SDL_ConvertSurface: function(surface: PSDL_Surface; const format: PSDL_PixelFormat): PSDL_Surface; cdecl;
  SDL_ConvertSurfaceFormat: function(surface: PSDL_Surface; pixel_format: Uint32): PSDL_Surface; cdecl;
  SDL_ConvertPixels: function(width: Integer; height: Integer; src_format: Uint32; const src: Pointer; src_pitch: Integer; dst_format: Uint32; dst: Pointer; dst_pitch: Integer): Integer; cdecl;
  SDL_PremultiplyAlpha: function(width: Integer; height: Integer; src_format: Uint32; const src: Pointer; src_pitch: Integer; dst_format: Uint32; dst: Pointer; dst_pitch: Integer): Integer; cdecl;
  SDL_FillSurfaceRect: function(dst: PSDL_Surface; const rect: PSDL_Rect; color: Uint32): Integer; cdecl;
  SDL_FillSurfaceRects: function(dst: PSDL_Surface; const rects: PSDL_Rect; count: Integer; color: Uint32): Integer; cdecl;
  SDL_BlitSurface: function(src: PSDL_Surface; const srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): Integer; cdecl;
  SDL_BlitSurfaceUnchecked: function(src: PSDL_Surface; srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): Integer; cdecl;
  SDL_SoftStretch: function(src: PSDL_Surface; const srcrect: PSDL_Rect; dst: PSDL_Surface; const dstrect: PSDL_Rect): Integer; cdecl;
  SDL_SoftStretchLinear: function(src: PSDL_Surface; const srcrect: PSDL_Rect; dst: PSDL_Surface; const dstrect: PSDL_Rect): Integer; cdecl;
  SDL_BlitSurfaceScaled: function(src: PSDL_Surface; const srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): Integer; cdecl;
  SDL_BlitSurfaceUncheckedScaled: function(src: PSDL_Surface; srcrect: PSDL_Rect; dst: PSDL_Surface; dstrect: PSDL_Rect): Integer; cdecl;
  SDL_SetYUVConversionMode: procedure(mode: SDL_YUV_CONVERSION_MODE); cdecl;
  SDL_GetYUVConversionMode: function(): SDL_YUV_CONVERSION_MODE; cdecl;
  SDL_GetYUVConversionModeForResolution: function(width: Integer; height: Integer): SDL_YUV_CONVERSION_MODE; cdecl;
  SDL_GetNumVideoDrivers: function(): Integer; cdecl;
  SDL_GetVideoDriver: function(index: Integer): PUTF8Char; cdecl;
  SDL_GetCurrentVideoDriver: function(): PUTF8Char; cdecl;
  SDL_GetNumVideoDisplays: function(): Integer; cdecl;
  SDL_GetDisplayName: function(displayIndex: Integer): PUTF8Char; cdecl;
  SDL_GetDisplayBounds: function(displayIndex: Integer; rect: PSDL_Rect): Integer; cdecl;
  SDL_GetDisplayUsableBounds: function(displayIndex: Integer; rect: PSDL_Rect): Integer; cdecl;
  SDL_GetDisplayPhysicalDPI: function(displayIndex: Integer; ddpi: PSingle; hdpi: PSingle; vdpi: PSingle): Integer; cdecl;
  SDL_GetDisplayOrientation: function(displayIndex: Integer): SDL_DisplayOrientation; cdecl;
  SDL_GetNumDisplayModes: function(displayIndex: Integer): Integer; cdecl;
  SDL_GetDisplayMode: function(displayIndex: Integer; modeIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl;
  SDL_GetDesktopDisplayMode: function(displayIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl;
  SDL_GetCurrentDisplayMode: function(displayIndex: Integer; mode: PSDL_DisplayMode): Integer; cdecl;
  SDL_GetClosestDisplayMode: function(displayIndex: Integer; const mode: PSDL_DisplayMode; closest: PSDL_DisplayMode): PSDL_DisplayMode; cdecl;
  SDL_GetDisplayIndexForPoint: function(const point: PSDL_Point): Integer; cdecl;
  SDL_GetDisplayIndexForRect: function(const rect: PSDL_Rect): Integer; cdecl;
  SDL_GetWindowDisplayIndex: function(window: PSDL_Window): Integer; cdecl;
  SDL_SetWindowDisplayMode: function(window: PSDL_Window; const mode: PSDL_DisplayMode): Integer; cdecl;
  SDL_GetWindowDisplayMode: function(window: PSDL_Window; mode: PSDL_DisplayMode): Integer; cdecl;
  SDL_GetWindowICCProfile: function(window: PSDL_Window; size: PNativeUInt): Pointer; cdecl;
  SDL_GetWindowPixelFormat: function(window: PSDL_Window): Uint32; cdecl;
  SDL_CreateWindow: function(const title: PUTF8Char; x: Integer; y: Integer; w: Integer; h: Integer; flags: Uint32): PSDL_Window; cdecl;
  SDL_CreateWindowFrom: function(const data: Pointer): PSDL_Window; cdecl;
  SDL_GetWindowID: function(window: PSDL_Window): SDL_WindowID; cdecl;
  SDL_GetWindowFromID: function(id: SDL_WindowID): PSDL_Window; cdecl;
  SDL_GetWindowFlags: function(window: PSDL_Window): Uint32; cdecl;
  SDL_SetWindowTitle: procedure(window: PSDL_Window; const title: PUTF8Char); cdecl;
  SDL_GetWindowTitle: function(window: PSDL_Window): PUTF8Char; cdecl;
  SDL_SetWindowIcon: procedure(window: PSDL_Window; icon: PSDL_Surface); cdecl;
  SDL_SetWindowData: function(window: PSDL_Window; const name: PUTF8Char; userdata: Pointer): Pointer; cdecl;
  SDL_GetWindowData: function(window: PSDL_Window; const name: PUTF8Char): Pointer; cdecl;
  SDL_SetWindowPosition: procedure(window: PSDL_Window; x: Integer; y: Integer); cdecl;
  SDL_GetWindowPosition: procedure(window: PSDL_Window; x: PInteger; y: PInteger); cdecl;
  SDL_SetWindowSize: procedure(window: PSDL_Window; w: Integer; h: Integer); cdecl;
  SDL_GetWindowSize: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_GetWindowBordersSize: function(window: PSDL_Window; top: PInteger; left: PInteger; bottom: PInteger; right: PInteger): Integer; cdecl;
  SDL_GetWindowSizeInPixels: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_SetWindowMinimumSize: procedure(window: PSDL_Window; min_w: Integer; min_h: Integer); cdecl;
  SDL_GetWindowMinimumSize: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_SetWindowMaximumSize: procedure(window: PSDL_Window; max_w: Integer; max_h: Integer); cdecl;
  SDL_GetWindowMaximumSize: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_SetWindowBordered: procedure(window: PSDL_Window; bordered: SDL_bool); cdecl;
  SDL_SetWindowResizable: procedure(window: PSDL_Window; resizable: SDL_bool); cdecl;
  SDL_SetWindowAlwaysOnTop: procedure(window: PSDL_Window; on_top: SDL_bool); cdecl;
  SDL_ShowWindow: procedure(window: PSDL_Window); cdecl;
  SDL_HideWindow: procedure(window: PSDL_Window); cdecl;
  SDL_RaiseWindow: procedure(window: PSDL_Window); cdecl;
  SDL_MaximizeWindow: procedure(window: PSDL_Window); cdecl;
  SDL_MinimizeWindow: procedure(window: PSDL_Window); cdecl;
  SDL_RestoreWindow: procedure(window: PSDL_Window); cdecl;
  SDL_SetWindowFullscreen: function(window: PSDL_Window; flags: Uint32): Integer; cdecl;
  SDL_GetWindowSurface: function(window: PSDL_Window): PSDL_Surface; cdecl;
  SDL_UpdateWindowSurface: function(window: PSDL_Window): Integer; cdecl;
  SDL_UpdateWindowSurfaceRects: function(window: PSDL_Window; const rects: PSDL_Rect; numrects: Integer): Integer; cdecl;
  SDL_SetWindowGrab: procedure(window: PSDL_Window; grabbed: SDL_bool); cdecl;
  SDL_SetWindowKeyboardGrab: procedure(window: PSDL_Window; grabbed: SDL_bool); cdecl;
  SDL_SetWindowMouseGrab: procedure(window: PSDL_Window; grabbed: SDL_bool); cdecl;
  SDL_GetWindowGrab: function(window: PSDL_Window): SDL_bool; cdecl;
  SDL_GetWindowKeyboardGrab: function(window: PSDL_Window): SDL_bool; cdecl;
  SDL_GetWindowMouseGrab: function(window: PSDL_Window): SDL_bool; cdecl;
  SDL_GetGrabbedWindow: function(): PSDL_Window; cdecl;
  SDL_SetWindowMouseRect: function(window: PSDL_Window; const rect: PSDL_Rect): Integer; cdecl;
  SDL_GetWindowMouseRect: function(window: PSDL_Window): PSDL_Rect; cdecl;
  SDL_SetWindowOpacity: function(window: PSDL_Window; opacity: Single): Integer; cdecl;
  SDL_GetWindowOpacity: function(window: PSDL_Window; out_opacity: PSingle): Integer; cdecl;
  SDL_SetWindowModalFor: function(modal_window: PSDL_Window; parent_window: PSDL_Window): Integer; cdecl;
  SDL_SetWindowInputFocus: function(window: PSDL_Window): Integer; cdecl;
  SDL_SetWindowHitTest: function(window: PSDL_Window; callback: SDL_HitTest; callback_data: Pointer): Integer; cdecl;
  SDL_FlashWindow: function(window: PSDL_Window; operation: SDL_FlashOperation): Integer; cdecl;
  SDL_DestroyWindow: procedure(window: PSDL_Window); cdecl;
  SDL_ScreenSaverEnabled: function(): SDL_bool; cdecl;
  SDL_EnableScreenSaver: procedure(); cdecl;
  SDL_DisableScreenSaver: procedure(); cdecl;
  SDL_GL_LoadLibrary: function(const path: PUTF8Char): Integer; cdecl;
  SDL_GL_GetProcAddress: function(const proc: PUTF8Char): SDL_FunctionPointer; cdecl;
  SDL_EGL_GetProcAddress: function(const proc: PUTF8Char): SDL_FunctionPointer; cdecl;
  SDL_GL_UnloadLibrary: procedure(); cdecl;
  SDL_GL_ExtensionSupported: function(const extension: PUTF8Char): SDL_bool; cdecl;
  SDL_GL_ResetAttributes: procedure(); cdecl;
  SDL_GL_SetAttribute: function(attr: SDL_GLattr; value: Integer): Integer; cdecl;
  SDL_GL_GetAttribute: function(attr: SDL_GLattr; value: PInteger): Integer; cdecl;
  SDL_GL_CreateContext: function(window: PSDL_Window): SDL_GLContext; cdecl;
  SDL_GL_MakeCurrent: function(window: PSDL_Window; context: SDL_GLContext): Integer; cdecl;
  SDL_GL_GetCurrentWindow: function(): PSDL_Window; cdecl;
  SDL_GL_GetCurrentContext: function(): SDL_GLContext; cdecl;
  SDL_EGL_GetCurrentEGLDisplay: function(): SDL_EGLDisplay; cdecl;
  SDL_EGL_GetCurrentEGLConfig: function(): SDL_EGLConfig; cdecl;
  SDL_EGL_GetWindowEGLSurface: function(window: PSDL_Window): SDL_EGLSurface; cdecl;
  SDL_EGL_SetEGLAttributeCallbacks: procedure(platformAttribCallback: SDL_EGLAttribArrayCallback; surfaceAttribCallback: SDL_EGLIntArrayCallback; contextAttribCallback: SDL_EGLIntArrayCallback); cdecl;
  SDL_GL_GetDrawableSize: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_GL_SetSwapInterval: function(interval: Integer): Integer; cdecl;
  SDL_GL_GetSwapInterval: function(interval: PInteger): Integer; cdecl;
  SDL_GL_SwapWindow: function(window: PSDL_Window): Integer; cdecl;
  SDL_GL_DeleteContext: procedure(context: SDL_GLContext); cdecl;
  SDL_GetKeyboardFocus: function(): PSDL_Window; cdecl;
  SDL_GetKeyboardState: function(numkeys: PInteger): PUint8; cdecl;
  SDL_ResetKeyboard: procedure(); cdecl;
  SDL_GetModState: function(): SDL_Keymod; cdecl;
  SDL_SetModState: procedure(modstate: SDL_Keymod); cdecl;
  SDL_GetKeyFromScancode: function(scancode: SDL_Scancode): SDL_Keycode; cdecl;
  SDL_GetScancodeFromKey: function(key: SDL_Keycode): SDL_Scancode; cdecl;
  SDL_GetScancodeName: function(scancode: SDL_Scancode): PUTF8Char; cdecl;
  SDL_GetScancodeFromName: function(const name: PUTF8Char): SDL_Scancode; cdecl;
  SDL_GetKeyName: function(key: SDL_Keycode): PUTF8Char; cdecl;
  SDL_GetKeyFromName: function(const name: PUTF8Char): SDL_Keycode; cdecl;
  SDL_StartTextInput: procedure(); cdecl;
  SDL_TextInputActive: function(): SDL_bool; cdecl;
  SDL_StopTextInput: procedure(); cdecl;
  SDL_ClearComposition: procedure(); cdecl;
  SDL_TextInputShown: function(): SDL_bool; cdecl;
  SDL_SetTextInputRect: procedure(const rect: PSDL_Rect); cdecl;
  SDL_HasScreenKeyboardSupport: function(): SDL_bool; cdecl;
  SDL_ScreenKeyboardShown: function(window: PSDL_Window): SDL_bool; cdecl;
  SDL_GetMouseFocus: function(): PSDL_Window; cdecl;
  SDL_GetMouseState: function(x: PSingle; y: PSingle): Uint32; cdecl;
  SDL_GetGlobalMouseState: function(x: PSingle; y: PSingle): Uint32; cdecl;
  SDL_GetRelativeMouseState: function(x: PSingle; y: PSingle): Uint32; cdecl;
  SDL_WarpMouseInWindow: procedure(window: PSDL_Window; x: Single; y: Single); cdecl;
  SDL_WarpMouseGlobal: function(x: Single; y: Single): Integer; cdecl;
  SDL_SetRelativeMouseMode: function(enabled: SDL_bool): Integer; cdecl;
  SDL_CaptureMouse: function(enabled: SDL_bool): Integer; cdecl;
  SDL_GetRelativeMouseMode: function(): SDL_bool; cdecl;
  SDL_CreateCursor: function(const data: PUint8; const mask: PUint8; w: Integer; h: Integer; hot_x: Integer; hot_y: Integer): PSDL_Cursor; cdecl;
  SDL_CreateColorCursor: function(surface: PSDL_Surface; hot_x: Integer; hot_y: Integer): PSDL_Cursor; cdecl;
  SDL_CreateSystemCursor: function(id: SDL_SystemCursor): PSDL_Cursor; cdecl;
  SDL_SetCursor: procedure(cursor: PSDL_Cursor); cdecl;
  SDL_GetCursor: function(): PSDL_Cursor; cdecl;
  SDL_GetDefaultCursor: function(): PSDL_Cursor; cdecl;
  SDL_DestroyCursor: procedure(cursor: PSDL_Cursor); cdecl;
  SDL_ShowCursor: function(): Integer; cdecl;
  SDL_HideCursor: function(): Integer; cdecl;
  SDL_CursorVisible: function(): SDL_bool; cdecl;
  SDL_GetNumTouchDevices: function(): Integer; cdecl;
  SDL_GetTouchDevice: function(index: Integer): SDL_TouchID; cdecl;
  SDL_GetTouchName: function(index: Integer): PUTF8Char; cdecl;
  SDL_GetTouchDeviceType: function(touchID: SDL_TouchID): SDL_TouchDeviceType; cdecl;
  SDL_GetNumTouchFingers: function(touchID: SDL_TouchID): Integer; cdecl;
  SDL_GetTouchFinger: function(touchID: SDL_TouchID; index: Integer): PSDL_Finger; cdecl;
  SDL_PumpEvents: procedure(); cdecl;
  SDL_PeepEvents: function(events: PSDL_Event; numevents: Integer; action: SDL_eventaction; minType: Uint32; maxType: Uint32): Integer; cdecl;
  SDL_HasEvent: function(type_: Uint32): SDL_bool; cdecl;
  SDL_HasEvents: function(minType: Uint32; maxType: Uint32): SDL_bool; cdecl;
  SDL_FlushEvent: procedure(type_: Uint32); cdecl;
  SDL_FlushEvents: procedure(minType: Uint32; maxType: Uint32); cdecl;
  SDL_PollEvent: function(event: PSDL_Event): Integer; cdecl;
  SDL_WaitEvent: function(event: PSDL_Event): Integer; cdecl;
  SDL_WaitEventTimeout: function(event: PSDL_Event; timeoutMS: Sint32): Integer; cdecl;
  SDL_PushEvent: function(event: PSDL_Event): Integer; cdecl;
  SDL_SetEventFilter: procedure(filter: SDL_EventFilter; userdata: Pointer); cdecl;
  SDL_GetEventFilter: function(filter: PSDL_EventFilter; userdata: PPointer): SDL_bool; cdecl;
  SDL_AddEventWatch: procedure(filter: SDL_EventFilter; userdata: Pointer); cdecl;
  SDL_DelEventWatch: procedure(filter: SDL_EventFilter; userdata: Pointer); cdecl;
  SDL_FilterEvents: procedure(filter: SDL_EventFilter; userdata: Pointer); cdecl;
  SDL_SetEventEnabled: procedure(type_: Uint32; enabled: SDL_bool); cdecl;
  SDL_EventEnabled: function(type_: Uint32): SDL_bool; cdecl;
  SDL_RegisterEvents: function(numevents: Integer): Uint32; cdecl;
  SDL_GetBasePath: function(): PUTF8Char; cdecl;
  SDL_GetPrefPath: function(const org: PUTF8Char; const app: PUTF8Char): PUTF8Char; cdecl;
  SDL_NumHaptics: function(): Integer; cdecl;
  SDL_HapticName: function(device_index: Integer): PUTF8Char; cdecl;
  SDL_HapticOpen: function(device_index: Integer): PSDL_Haptic; cdecl;
  SDL_HapticOpened: function(device_index: Integer): Integer; cdecl;
  SDL_HapticIndex: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_MouseIsHaptic: function(): Integer; cdecl;
  SDL_HapticOpenFromMouse: function(): PSDL_Haptic; cdecl;
  SDL_JoystickIsHaptic: function(joystick: PSDL_Joystick): Integer; cdecl;
  SDL_HapticOpenFromJoystick: function(joystick: PSDL_Joystick): PSDL_Haptic; cdecl;
  SDL_HapticClose: procedure(haptic: PSDL_Haptic); cdecl;
  SDL_HapticNumEffects: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticNumEffectsPlaying: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticQuery: function(haptic: PSDL_Haptic): Cardinal; cdecl;
  SDL_HapticNumAxes: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticEffectSupported: function(haptic: PSDL_Haptic; effect: PSDL_HapticEffect): Integer; cdecl;
  SDL_HapticNewEffect: function(haptic: PSDL_Haptic; effect: PSDL_HapticEffect): Integer; cdecl;
  SDL_HapticUpdateEffect: function(haptic: PSDL_Haptic; effect: Integer; data: PSDL_HapticEffect): Integer; cdecl;
  SDL_HapticRunEffect: function(haptic: PSDL_Haptic; effect: Integer; iterations: Uint32): Integer; cdecl;
  SDL_HapticStopEffect: function(haptic: PSDL_Haptic; effect: Integer): Integer; cdecl;
  SDL_HapticDestroyEffect: procedure(haptic: PSDL_Haptic; effect: Integer); cdecl;
  SDL_HapticGetEffectStatus: function(haptic: PSDL_Haptic; effect: Integer): Integer; cdecl;
  SDL_HapticSetGain: function(haptic: PSDL_Haptic; gain: Integer): Integer; cdecl;
  SDL_HapticSetAutocenter: function(haptic: PSDL_Haptic; autocenter: Integer): Integer; cdecl;
  SDL_HapticPause: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticUnpause: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticStopAll: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticRumbleSupported: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticRumbleInit: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_HapticRumblePlay: function(haptic: PSDL_Haptic; strength: Single; length: Uint32): Integer; cdecl;
  SDL_HapticRumbleStop: function(haptic: PSDL_Haptic): Integer; cdecl;
  SDL_hid_init: function(): Integer; cdecl;
  SDL_hid_exit: function(): Integer; cdecl;
  SDL_hid_device_change_count: function(): Uint32; cdecl;
  SDL_hid_enumerate: function(vendor_id: Word; product_id: Word): PSDL_hid_device_info; cdecl;
  SDL_hid_free_enumeration: procedure(devs: PSDL_hid_device_info); cdecl;
  SDL_hid_open: function(vendor_id: Word; product_id: Word; const serial_number: PWideChar): PSDL_hid_device; cdecl;
  SDL_hid_open_path: function(const path: PUTF8Char; bExclusive: Integer): PSDL_hid_device; cdecl;
  SDL_hid_write: function(dev: PSDL_hid_device; const data: PByte; length: NativeUInt): Integer; cdecl;
  SDL_hid_read_timeout: function(dev: PSDL_hid_device; data: PByte; length: NativeUInt; milliseconds: Integer): Integer; cdecl;
  SDL_hid_read: function(dev: PSDL_hid_device; data: PByte; length: NativeUInt): Integer; cdecl;
  SDL_hid_set_nonblocking: function(dev: PSDL_hid_device; nonblock: Integer): Integer; cdecl;
  SDL_hid_send_feature_report: function(dev: PSDL_hid_device; const data: PByte; length: NativeUInt): Integer; cdecl;
  SDL_hid_get_feature_report: function(dev: PSDL_hid_device; data: PByte; length: NativeUInt): Integer; cdecl;
  SDL_hid_close: procedure(dev: PSDL_hid_device); cdecl;
  SDL_hid_get_manufacturer_string: function(dev: PSDL_hid_device; string_: PWideChar; maxlen: NativeUInt): Integer; cdecl;
  SDL_hid_get_product_string: function(dev: PSDL_hid_device; string_: PWideChar; maxlen: NativeUInt): Integer; cdecl;
  SDL_hid_get_serial_number_string: function(dev: PSDL_hid_device; string_: PWideChar; maxlen: NativeUInt): Integer; cdecl;
  SDL_hid_get_indexed_string: function(dev: PSDL_hid_device; string_index: Integer; string_: PWideChar; maxlen: NativeUInt): Integer; cdecl;
  SDL_hid_ble_scan: procedure(active: SDL_bool); cdecl;
  SDL_SetHintWithPriority: function(const name: PUTF8Char; const value: PUTF8Char; priority: SDL_HintPriority): SDL_bool; cdecl;
  SDL_SetHint: function(const name: PUTF8Char; const value: PUTF8Char): SDL_bool; cdecl;
  SDL_ResetHint: function(const name: PUTF8Char): SDL_bool; cdecl;
  SDL_ResetHints: procedure(); cdecl;
  SDL_GetHint: function(const name: PUTF8Char): PUTF8Char; cdecl;
  SDL_GetHintBoolean: function(const name: PUTF8Char; default_value: SDL_bool): SDL_bool; cdecl;
  SDL_AddHintCallback: function(const name: PUTF8Char; callback: SDL_HintCallback; userdata: Pointer): Integer; cdecl;
  SDL_DelHintCallback: procedure(const name: PUTF8Char; callback: SDL_HintCallback; userdata: Pointer); cdecl;
  SDL_ClearHints: procedure(); cdecl;
  SDL_Init: function(flags: Uint32): Integer; cdecl;
  SDL_InitSubSystem: function(flags: Uint32): Integer; cdecl;
  SDL_QuitSubSystem: procedure(flags: Uint32); cdecl;
  SDL_WasInit: function(flags: Uint32): Uint32; cdecl;
  SDL_Quit: procedure(); cdecl;
  SDL_LoadObject: function(const sofile: PUTF8Char): Pointer; cdecl;
  SDL_LoadFunction: function(handle: Pointer; const name: PUTF8Char): SDL_FunctionPointer; cdecl;
  SDL_UnloadObject: procedure(handle: Pointer); cdecl;
  SDL_GetPreferredLocales: function(): PSDL_Locale; cdecl;
  SDL_LogSetAllPriority: procedure(priority: SDL_LogPriority); cdecl;
  SDL_LogSetPriority: procedure(category: Integer; priority: SDL_LogPriority); cdecl;
  SDL_LogGetPriority: function(category: Integer): SDL_LogPriority; cdecl;
  SDL_LogResetPriorities: procedure(); cdecl;
  SDL_Log_: procedure(const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogVerbose: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogDebug: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogInfo: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogWarn: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogError: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogCritical: procedure(category: Integer; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogMessage: procedure(category: Integer; priority: SDL_LogPriority; const fmt: PUTF8Char) varargs; cdecl;
  SDL_LogMessageV: procedure(category: Integer; priority: SDL_LogPriority; const fmt: PUTF8Char; ap: Pointer); cdecl;
  SDL_LogGetOutputFunction: procedure(callback: PSDL_LogOutputFunction; userdata: PPointer); cdecl;
  SDL_LogSetOutputFunction: procedure(callback: SDL_LogOutputFunction; userdata: Pointer); cdecl;
  SDL_ShowMessageBox: function(const messageboxdata: PSDL_MessageBoxData; buttonid: PInteger): Integer; cdecl;
  SDL_ShowSimpleMessageBox: function(flags: Uint32; const title: PUTF8Char; const message_: PUTF8Char; window: PSDL_Window): Integer; cdecl;
  SDL_Metal_CreateView: function(window: PSDL_Window): SDL_MetalView; cdecl;
  SDL_Metal_DestroyView: procedure(view: SDL_MetalView); cdecl;
  SDL_Metal_GetLayer: function(view: SDL_MetalView): Pointer; cdecl;
  SDL_Metal_GetDrawableSize: procedure(window: PSDL_Window; w: PInteger; h: PInteger); cdecl;
  SDL_OpenURL: function(const url: PUTF8Char): Integer; cdecl;
  SDL_GetPlatform: function(): PUTF8Char; cdecl;
  SDL_GetPowerInfo: function(seconds: PInteger; percent: PInteger): SDL_PowerState; cdecl;
  SDL_GetNumRenderDrivers: function(): Integer; cdecl;
  SDL_GetRenderDriver: function(index: Integer): PUTF8Char; cdecl;
  SDL_CreateWindowAndRenderer: function(width: Integer; height: Integer; window_flags: Uint32; window: PPSDL_Window; renderer: PPSDL_Renderer): Integer; cdecl;
  SDL_CreateRenderer: function(window: PSDL_Window; const name: PUTF8Char; flags: Uint32): PSDL_Renderer; cdecl;
  SDL_CreateSoftwareRenderer: function(surface: PSDL_Surface): PSDL_Renderer; cdecl;
  SDL_GetRenderer: function(window: PSDL_Window): PSDL_Renderer; cdecl;
  SDL_GetRenderWindow: function(renderer: PSDL_Renderer): PSDL_Window; cdecl;
  SDL_GetRendererInfo: function(renderer: PSDL_Renderer; info: PSDL_RendererInfo): Integer; cdecl;
  SDL_GetRendererOutputSize: function(renderer: PSDL_Renderer; w: PInteger; h: PInteger): Integer; cdecl;
  SDL_CreateTexture: function(renderer: PSDL_Renderer; format: Uint32; access: Integer; w: Integer; h: Integer): PSDL_Texture; cdecl;
  SDL_CreateTextureFromSurface: function(renderer: PSDL_Renderer; surface: PSDL_Surface): PSDL_Texture; cdecl;
  SDL_QueryTexture: function(texture: PSDL_Texture; format: PUint32; access: PInteger; w: PInteger; h: PInteger): Integer; cdecl;
  SDL_SetTextureColorMod: function(texture: PSDL_Texture; r: Uint8; g: Uint8; b: Uint8): Integer; cdecl;
  SDL_GetTextureColorMod: function(texture: PSDL_Texture; r: PUint8; g: PUint8; b: PUint8): Integer; cdecl;
  SDL_SetTextureAlphaMod: function(texture: PSDL_Texture; alpha: Uint8): Integer; cdecl;
  SDL_GetTextureAlphaMod: function(texture: PSDL_Texture; alpha: PUint8): Integer; cdecl;
  SDL_SetTextureBlendMode: function(texture: PSDL_Texture; blendMode: SDL_BlendMode): Integer; cdecl;
  SDL_GetTextureBlendMode: function(texture: PSDL_Texture; blendMode: PSDL_BlendMode): Integer; cdecl;
  SDL_SetTextureScaleMode: function(texture: PSDL_Texture; scaleMode: SDL_ScaleMode): Integer; cdecl;
  SDL_GetTextureScaleMode: function(texture: PSDL_Texture; scaleMode: PSDL_ScaleMode): Integer; cdecl;
  SDL_SetTextureUserData: function(texture: PSDL_Texture; userdata: Pointer): Integer; cdecl;
  SDL_GetTextureUserData: function(texture: PSDL_Texture): Pointer; cdecl;
  SDL_UpdateTexture: function(texture: PSDL_Texture; const rect: PSDL_Rect; const pixels: Pointer; pitch: Integer): Integer; cdecl;
  SDL_UpdateYUVTexture: function(texture: PSDL_Texture; const rect: PSDL_Rect; const Yplane: PUint8; Ypitch: Integer; const Uplane: PUint8; Upitch: Integer; const Vplane: PUint8; Vpitch: Integer): Integer; cdecl;
  SDL_UpdateNVTexture: function(texture: PSDL_Texture; const rect: PSDL_Rect; const Yplane: PUint8; Ypitch: Integer; const UVplane: PUint8; UVpitch: Integer): Integer; cdecl;
  SDL_LockTexture: function(texture: PSDL_Texture; const rect: PSDL_Rect; pixels: PPointer; pitch: PInteger): Integer; cdecl;
  SDL_LockTextureToSurface: function(texture: PSDL_Texture; const rect: PSDL_Rect; surface: PPSDL_Surface): Integer; cdecl;
  SDL_UnlockTexture: procedure(texture: PSDL_Texture); cdecl;
  SDL_RenderTargetSupported: function(renderer: PSDL_Renderer): SDL_bool; cdecl;
  SDL_SetRenderTarget: function(renderer: PSDL_Renderer; texture: PSDL_Texture): Integer; cdecl;
  SDL_GetRenderTarget: function(renderer: PSDL_Renderer): PSDL_Texture; cdecl;
  SDL_SetRenderLogicalSize: function(renderer: PSDL_Renderer; w: Integer; h: Integer): Integer; cdecl;
  SDL_GetRenderLogicalSize: procedure(renderer: PSDL_Renderer; w: PInteger; h: PInteger); cdecl;
  SDL_SetRenderIntegerScale: function(renderer: PSDL_Renderer; enable: SDL_bool): Integer; cdecl;
  SDL_GetRenderIntegerScale: function(renderer: PSDL_Renderer): SDL_bool; cdecl;
  SDL_SetRenderViewport: function(renderer: PSDL_Renderer; const rect: PSDL_Rect): Integer; cdecl;
  SDL_GetRenderViewport: procedure(renderer: PSDL_Renderer; rect: PSDL_Rect); cdecl;
  SDL_SetRenderClipRect: function(renderer: PSDL_Renderer; const rect: PSDL_Rect): Integer; cdecl;
  SDL_GetRenderClipRect: procedure(renderer: PSDL_Renderer; rect: PSDL_Rect); cdecl;
  SDL_RenderClipEnabled: function(renderer: PSDL_Renderer): SDL_bool; cdecl;
  SDL_SetRenderScale: function(renderer: PSDL_Renderer; scaleX: Single; scaleY: Single): Integer; cdecl;
  SDL_GetRenderScale: procedure(renderer: PSDL_Renderer; scaleX: PSingle; scaleY: PSingle); cdecl;
  SDL_RenderWindowToLogical: procedure(renderer: PSDL_Renderer; windowX: Single; windowY: Single; logicalX: PSingle; logicalY: PSingle); cdecl;
  SDL_RenderLogicalToWindow: procedure(renderer: PSDL_Renderer; logicalX: Single; logicalY: Single; windowX: PSingle; windowY: PSingle); cdecl;
  SDL_SetRenderDrawColor: function(renderer: PSDL_Renderer; r: Uint8; g: Uint8; b: Uint8; a: Uint8): Integer; cdecl;
  SDL_GetRenderDrawColor: function(renderer: PSDL_Renderer; r: PUint8; g: PUint8; b: PUint8; a: PUint8): Integer; cdecl;
  SDL_SetRenderDrawBlendMode: function(renderer: PSDL_Renderer; blendMode: SDL_BlendMode): Integer; cdecl;
  SDL_GetRenderDrawBlendMode: function(renderer: PSDL_Renderer; blendMode: PSDL_BlendMode): Integer; cdecl;
  SDL_RenderClear: function(renderer: PSDL_Renderer): Integer; cdecl;
  SDL_RenderPoint: function(renderer: PSDL_Renderer; x: Single; y: Single): Integer; cdecl;
  SDL_RenderPoints: function(renderer: PSDL_Renderer; const points: PSDL_FPoint; count: Integer): Integer; cdecl;
  SDL_RenderLine: function(renderer: PSDL_Renderer; x1: Single; y1: Single; x2: Single; y2: Single): Integer; cdecl;
  SDL_RenderLines: function(renderer: PSDL_Renderer; const points: PSDL_FPoint; count: Integer): Integer; cdecl;
  SDL_RenderRect: function(renderer: PSDL_Renderer; const rect: PSDL_FRect): Integer; cdecl;
  SDL_RenderRects: function(renderer: PSDL_Renderer; const rects: PSDL_FRect; count: Integer): Integer; cdecl;
  SDL_RenderFillRect: function(renderer: PSDL_Renderer; const rect: PSDL_FRect): Integer; cdecl;
  SDL_RenderFillRects: function(renderer: PSDL_Renderer; const rects: PSDL_FRect; count: Integer): Integer; cdecl;
  SDL_RenderTexture: function(renderer: PSDL_Renderer; texture: PSDL_Texture; const srcrect: PSDL_Rect; const dstrect: PSDL_FRect): Integer; cdecl;
  SDL_RenderTextureRotated: function(renderer: PSDL_Renderer; texture: PSDL_Texture; const srcrect: PSDL_Rect; const dstrect: PSDL_FRect; const angle: Double; const center: PSDL_FPoint; const flip: SDL_RendererFlip): Integer; cdecl;
  SDL_RenderGeometry: function(renderer: PSDL_Renderer; texture: PSDL_Texture; const vertices: PSDL_Vertex; num_vertices: Integer; const indices: PInteger; num_indices: Integer): Integer; cdecl;
  SDL_RenderGeometryRaw: function(renderer: PSDL_Renderer; texture: PSDL_Texture; const xy: PSingle; xy_stride: Integer; const color: PSDL_Color; color_stride: Integer; const uv: PSingle; uv_stride: Integer; num_vertices: Integer; const indices: Pointer; num_indices: Integer; size_indices: Integer): Integer; cdecl;
  SDL_RenderReadPixels: function(renderer: PSDL_Renderer; const rect: PSDL_Rect; format: Uint32; pixels: Pointer; pitch: Integer): Integer; cdecl;
  SDL_RenderPresent: procedure(renderer: PSDL_Renderer); cdecl;
  SDL_DestroyTexture: procedure(texture: PSDL_Texture); cdecl;
  SDL_DestroyRenderer: procedure(renderer: PSDL_Renderer); cdecl;
  SDL_RenderFlush: function(renderer: PSDL_Renderer): Integer; cdecl;
  SDL_GL_BindTexture: function(texture: PSDL_Texture; texw: PSingle; texh: PSingle): Integer; cdecl;
  SDL_GL_UnbindTexture: function(texture: PSDL_Texture): Integer; cdecl;
  SDL_GetRenderMetalLayer: function(renderer: PSDL_Renderer): Pointer; cdecl;
  SDL_GetRenderMetalCommandEncoder: function(renderer: PSDL_Renderer): Pointer; cdecl;
  SDL_SetRenderVSync: function(renderer: PSDL_Renderer; vsync: Integer): Integer; cdecl;
  SDL_GetRenderVSync: function(renderer: PSDL_Renderer; vsync: PInteger): Integer; cdecl;
  SDL_CreateShapedWindow: function(const title: PUTF8Char; x: Cardinal; y: Cardinal; w: Cardinal; h: Cardinal; flags: Uint32): PSDL_Window; cdecl;
  SDL_IsShapedWindow: function(const window: PSDL_Window): SDL_bool; cdecl;
  SDL_SetWindowShape: function(window: PSDL_Window; shape: PSDL_Surface; shape_mode: PSDL_WindowShapeMode): Integer; cdecl;
  SDL_GetShapedWindowMode: function(window: PSDL_Window; shape_mode: PSDL_WindowShapeMode): Integer; cdecl;
  SDL_SetWindowsMessageHook: procedure(callback: SDL_WindowsMessageHook; userdata: Pointer); cdecl;
  SDL_Direct3D9GetAdapterIndex: function(displayIndex: Integer): Integer; cdecl;
  SDL_GetRenderD3D9Device: function(renderer: PSDL_Renderer): PIDirect3DDevice9; cdecl;
  SDL_GetRenderD3D11Device: function(renderer: PSDL_Renderer): PID3D11Device; cdecl;
  SDL_RenderGetD3D12Device: function(renderer: PSDL_Renderer): PID3D12Device; cdecl;
  SDL_DXGIGetOutputInfo: function(displayIndex: Integer; adapterIndex: PInteger; outputIndex: PInteger): SDL_bool; cdecl;
  SDL_IsTablet: function(): SDL_bool; cdecl;
  SDL_OnApplicationWillTerminate: procedure(); cdecl;
  SDL_OnApplicationDidReceiveMemoryWarning: procedure(); cdecl;
  SDL_OnApplicationWillResignActive: procedure(); cdecl;
  SDL_OnApplicationDidEnterBackground: procedure(); cdecl;
  SDL_OnApplicationWillEnterForeground: procedure(); cdecl;
  SDL_OnApplicationDidBecomeActive: procedure(); cdecl;
  SDL_GetTicks: function(): Uint64; cdecl;
  SDL_GetTicksNS: function(): Uint64; cdecl;
  SDL_GetPerformanceCounter: function(): Uint64; cdecl;
  SDL_GetPerformanceFrequency: function(): Uint64; cdecl;
  SDL_Delay: procedure(ms: Uint32); cdecl;
  SDL_DelayNS: procedure(ns: Uint64); cdecl;
  SDL_AddTimer: function(interval: Uint32; callback: SDL_TimerCallback; param: Pointer): SDL_TimerID; cdecl;
  SDL_RemoveTimer: function(id: SDL_TimerID): SDL_bool; cdecl;
  SDL_GetVersion: procedure(ver: PSDL_version); cdecl;
  SDL_GetRevision: function(): PUTF8Char; cdecl;
  stbtt_BakeFontBitmap: function(const data: PByte; offset: Integer; pixel_height: Single; pixels: PByte; pw: Integer; ph: Integer; first_char: Integer; num_chars: Integer; chardata: Pstbtt_bakedchar): Integer; cdecl;
  stbtt_GetBakedQuad: procedure(const chardata: Pstbtt_bakedchar; pw: Integer; ph: Integer; char_index: Integer; xpos: PSingle; ypos: PSingle; q: Pstbtt_aligned_quad; opengl_fillrule: Integer); cdecl;
  stbtt_GetScaledFontVMetrics: procedure(const fontdata: PByte; index: Integer; size: Single; ascent: PSingle; descent: PSingle; lineGap: PSingle); cdecl;
  stbtt_PackBegin: function(spc: Pstbtt_pack_context; pixels: PByte; width: Integer; height: Integer; stride_in_bytes: Integer; padding: Integer; alloc_context: Pointer): Integer; cdecl;
  stbtt_PackEnd: procedure(spc: Pstbtt_pack_context); cdecl;
  stbtt_PackFontRange: function(spc: Pstbtt_pack_context; const fontdata: PByte; font_index: Integer; font_size: Single; first_unicode_char_in_range: Integer; num_chars_in_range: Integer; chardata_for_range: Pstbtt_packedchar): Integer; cdecl;
  stbtt_PackFontRanges: function(spc: Pstbtt_pack_context; const fontdata: PByte; font_index: Integer; ranges: Pstbtt_pack_range; num_ranges: Integer): Integer; cdecl;
  stbtt_PackSetOversampling: procedure(spc: Pstbtt_pack_context; h_oversample: Cardinal; v_oversample: Cardinal); cdecl;
  stbtt_PackSetSkipMissingCodepoints: procedure(spc: Pstbtt_pack_context; skip: Integer); cdecl;
  stbtt_GetPackedQuad: procedure(const chardata: Pstbtt_packedchar; pw: Integer; ph: Integer; char_index: Integer; xpos: PSingle; ypos: PSingle; q: Pstbtt_aligned_quad; align_to_integer: Integer); cdecl;
  stbtt_PackFontRangesGatherRects: function(spc: Pstbtt_pack_context; const info: Pstbtt_fontinfo; ranges: Pstbtt_pack_range; num_ranges: Integer; rects: Pstbrp_rect): Integer; cdecl;
  stbtt_PackFontRangesPackRects: procedure(spc: Pstbtt_pack_context; rects: Pstbrp_rect; num_rects: Integer); cdecl;
  stbtt_PackFontRangesRenderIntoRects: function(spc: Pstbtt_pack_context; const info: Pstbtt_fontinfo; ranges: Pstbtt_pack_range; num_ranges: Integer; rects: Pstbrp_rect): Integer; cdecl;
  stbtt_GetNumberOfFonts: function(const data: PByte): Integer; cdecl;
  stbtt_GetFontOffsetForIndex: function(const data: PByte; index: Integer): Integer; cdecl;
  stbtt_InitFont: function(info: Pstbtt_fontinfo; const data: PByte; offset: Integer): Integer; cdecl;
  stbtt_FindGlyphIndex: function(const info: Pstbtt_fontinfo; unicode_codepoint: Integer): Integer; cdecl;
  stbtt_ScaleForPixelHeight: function(const info: Pstbtt_fontinfo; pixels: Single): Single; cdecl;
  stbtt_ScaleForMappingEmToPixels: function(const info: Pstbtt_fontinfo; pixels: Single): Single; cdecl;
  stbtt_GetFontVMetrics: procedure(const info: Pstbtt_fontinfo; ascent: PInteger; descent: PInteger; lineGap: PInteger); cdecl;
  stbtt_GetFontVMetricsOS2: function(const info: Pstbtt_fontinfo; typoAscent: PInteger; typoDescent: PInteger; typoLineGap: PInteger): Integer; cdecl;
  stbtt_GetFontBoundingBox: procedure(const info: Pstbtt_fontinfo; x0: PInteger; y0: PInteger; x1: PInteger; y1: PInteger); cdecl;
  stbtt_GetCodepointHMetrics: procedure(const info: Pstbtt_fontinfo; codepoint: Integer; advanceWidth: PInteger; leftSideBearing: PInteger); cdecl;
  stbtt_GetCodepointKernAdvance: function(const info: Pstbtt_fontinfo; ch1: Integer; ch2: Integer): Integer; cdecl;
  stbtt_GetCodepointBox: function(const info: Pstbtt_fontinfo; codepoint: Integer; x0: PInteger; y0: PInteger; x1: PInteger; y1: PInteger): Integer; cdecl;
  stbtt_GetGlyphHMetrics: procedure(const info: Pstbtt_fontinfo; glyph_index: Integer; advanceWidth: PInteger; leftSideBearing: PInteger); cdecl;
  stbtt_GetGlyphKernAdvance: function(const info: Pstbtt_fontinfo; glyph1: Integer; glyph2: Integer): Integer; cdecl;
  stbtt_GetGlyphBox: function(const info: Pstbtt_fontinfo; glyph_index: Integer; x0: PInteger; y0: PInteger; x1: PInteger; y1: PInteger): Integer; cdecl;
  stbtt_GetKerningTableLength: function(const info: Pstbtt_fontinfo): Integer; cdecl;
  stbtt_GetKerningTable: function(const info: Pstbtt_fontinfo; table: Pstbtt_kerningentry; table_length: Integer): Integer; cdecl;
  stbtt_IsGlyphEmpty: function(const info: Pstbtt_fontinfo; glyph_index: Integer): Integer; cdecl;
  stbtt_GetCodepointShape: function(const info: Pstbtt_fontinfo; unicode_codepoint: Integer; vertices: PPstbtt_vertex): Integer; cdecl;
  stbtt_GetGlyphShape: function(const info: Pstbtt_fontinfo; glyph_index: Integer; vertices: PPstbtt_vertex): Integer; cdecl;
  stbtt_FreeShape: procedure(const info: Pstbtt_fontinfo; vertices: Pstbtt_vertex); cdecl;
  stbtt_FindSVGDoc: function(const info: Pstbtt_fontinfo; gl: Integer): PByte; cdecl;
  stbtt_GetCodepointSVG: function(const info: Pstbtt_fontinfo; unicode_codepoint: Integer; svg: PPUTF8Char): Integer; cdecl;
  stbtt_GetGlyphSVG: function(const info: Pstbtt_fontinfo; gl: Integer; svg: PPUTF8Char): Integer; cdecl;
  stbtt_FreeBitmap: procedure(bitmap: PByte; userdata: Pointer); cdecl;
  stbtt_GetCodepointBitmap: function(const info: Pstbtt_fontinfo; scale_x: Single; scale_y: Single; codepoint: Integer; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_GetCodepointBitmapSubpixel: function(const info: Pstbtt_fontinfo; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; codepoint: Integer; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_MakeCodepointBitmap: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; codepoint: Integer); cdecl;
  stbtt_MakeCodepointBitmapSubpixel: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; codepoint: Integer); cdecl;
  stbtt_MakeCodepointBitmapSubpixelPrefilter: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; oversample_x: Integer; oversample_y: Integer; sub_x: PSingle; sub_y: PSingle; codepoint: Integer); cdecl;
  stbtt_GetCodepointBitmapBox: procedure(const font: Pstbtt_fontinfo; codepoint: Integer; scale_x: Single; scale_y: Single; ix0: PInteger; iy0: PInteger; ix1: PInteger; iy1: PInteger); cdecl;
  stbtt_GetCodepointBitmapBoxSubpixel: procedure(const font: Pstbtt_fontinfo; codepoint: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; ix0: PInteger; iy0: PInteger; ix1: PInteger; iy1: PInteger); cdecl;
  stbtt_GetGlyphBitmap: function(const info: Pstbtt_fontinfo; scale_x: Single; scale_y: Single; glyph: Integer; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_GetGlyphBitmapSubpixel: function(const info: Pstbtt_fontinfo; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; glyph: Integer; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_MakeGlyphBitmap: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; glyph: Integer); cdecl;
  stbtt_MakeGlyphBitmapSubpixel: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; glyph: Integer); cdecl;
  stbtt_MakeGlyphBitmapSubpixelPrefilter: procedure(const info: Pstbtt_fontinfo; output: PByte; out_w: Integer; out_h: Integer; out_stride: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; oversample_x: Integer; oversample_y: Integer; sub_x: PSingle; sub_y: PSingle; glyph: Integer); cdecl;
  stbtt_GetGlyphBitmapBox: procedure(const font: Pstbtt_fontinfo; glyph: Integer; scale_x: Single; scale_y: Single; ix0: PInteger; iy0: PInteger; ix1: PInteger; iy1: PInteger); cdecl;
  stbtt_GetGlyphBitmapBoxSubpixel: procedure(const font: Pstbtt_fontinfo; glyph: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; ix0: PInteger; iy0: PInteger; ix1: PInteger; iy1: PInteger); cdecl;
  stbtt_Rasterize: procedure(result: Pstbtt__bitmap; flatness_in_pixels: Single; vertices: Pstbtt_vertex; num_verts: Integer; scale_x: Single; scale_y: Single; shift_x: Single; shift_y: Single; x_off: Integer; y_off: Integer; invert: Integer; userdata: Pointer); cdecl;
  stbtt_FreeSDF: procedure(bitmap: PByte; userdata: Pointer); cdecl;
  stbtt_GetGlyphSDF: function(const info: Pstbtt_fontinfo; scale: Single; glyph: Integer; padding: Integer; onedge_value: Byte; pixel_dist_scale: Single; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_GetCodepointSDF: function(const info: Pstbtt_fontinfo; scale: Single; codepoint: Integer; padding: Integer; onedge_value: Byte; pixel_dist_scale: Single; width: PInteger; height: PInteger; xoff: PInteger; yoff: PInteger): PByte; cdecl;
  stbtt_FindMatchingFont: function(const fontdata: PByte; const name: PUTF8Char; flags: Integer): Integer; cdecl;
  stbtt_CompareUTF8toUTF16_bigendian: function(const s1: PUTF8Char; len1: Integer; const s2: PUTF8Char; len2: Integer): Integer; cdecl;
  stbtt_GetFontNameString: function(const font: Pstbtt_fontinfo; length: PInteger; platformID: Integer; encodingID: Integer; languageID: Integer; nameID: Integer): PUTF8Char; cdecl;
  stbi_load_from_memory: function(const buffer: Pstbi_uc; len: Integer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_uc; cdecl;
  stbi_load_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_uc; cdecl;
  stbi_load: function(const filename: PUTF8Char; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_uc; cdecl;
  stbi_load_from_file: function(f: PPointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_uc; cdecl;
  stbi_load_gif_from_memory: function(const buffer: Pstbi_uc; len: Integer; delays: PPInteger; x: PInteger; y: PInteger; z: PInteger; comp: PInteger; req_comp: Integer): Pstbi_uc; cdecl;
  stbi_load_16_from_memory: function(const buffer: Pstbi_uc; len: Integer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_us; cdecl;
  stbi_load_16_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_us; cdecl;
  stbi_load_16: function(const filename: PUTF8Char; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_us; cdecl;
  stbi_load_from_file_16: function(f: PPointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): Pstbi_us; cdecl;
  stbi_loadf_from_memory: function(const buffer: Pstbi_uc; len: Integer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): PSingle; cdecl;
  stbi_loadf_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): PSingle; cdecl;
  stbi_loadf: function(const filename: PUTF8Char; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): PSingle; cdecl;
  stbi_loadf_from_file: function(f: PPointer; x: PInteger; y: PInteger; channels_in_file: PInteger; desired_channels: Integer): PSingle; cdecl;
  stbi_hdr_to_ldr_gamma: procedure(gamma: Single); cdecl;
  stbi_hdr_to_ldr_scale: procedure(scale: Single); cdecl;
  stbi_ldr_to_hdr_gamma: procedure(gamma: Single); cdecl;
  stbi_ldr_to_hdr_scale: procedure(scale: Single); cdecl;
  stbi_is_hdr_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer): Integer; cdecl;
  stbi_is_hdr_from_memory: function(const buffer: Pstbi_uc; len: Integer): Integer; cdecl;
  stbi_is_hdr: function(const filename: PUTF8Char): Integer; cdecl;
  stbi_is_hdr_from_file: function(f: PPointer): Integer; cdecl;
  stbi_failure_reason: function(): PUTF8Char; cdecl;
  stbi_image_free: procedure(retval_from_stbi_load: Pointer); cdecl;
  stbi_info_from_memory: function(const buffer: Pstbi_uc; len: Integer; x: PInteger; y: PInteger; comp: PInteger): Integer; cdecl;
  stbi_info_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer; x: PInteger; y: PInteger; comp: PInteger): Integer; cdecl;
  stbi_is_16_bit_from_memory: function(const buffer: Pstbi_uc; len: Integer): Integer; cdecl;
  stbi_is_16_bit_from_callbacks: function(const clbk: Pstbi_io_callbacks; user: Pointer): Integer; cdecl;
  stbi_info: function(const filename: PUTF8Char; x: PInteger; y: PInteger; comp: PInteger): Integer; cdecl;
  stbi_info_from_file: function(f: PPointer; x: PInteger; y: PInteger; comp: PInteger): Integer; cdecl;
  stbi_is_16_bit: function(const filename: PUTF8Char): Integer; cdecl;
  stbi_is_16_bit_from_file: function(f: PPointer): Integer; cdecl;
  stbi_set_unpremultiply_on_load: procedure(flag_true_if_should_unpremultiply: Integer); cdecl;
  stbi_convert_iphone_png_to_rgb: procedure(flag_true_if_should_convert: Integer); cdecl;
  stbi_set_flip_vertically_on_load: procedure(flag_true_if_should_flip: Integer); cdecl;
  stbi_set_unpremultiply_on_load_thread: procedure(flag_true_if_should_unpremultiply: Integer); cdecl;
  stbi_convert_iphone_png_to_rgb_thread: procedure(flag_true_if_should_convert: Integer); cdecl;
  stbi_set_flip_vertically_on_load_thread: procedure(flag_true_if_should_flip: Integer); cdecl;
  stbi_zlib_decode_malloc_guesssize: function(const buffer: PUTF8Char; len: Integer; initial_size: Integer; outlen: PInteger): PUTF8Char; cdecl;
  stbi_zlib_decode_malloc_guesssize_headerflag: function(const buffer: PUTF8Char; len: Integer; initial_size: Integer; outlen: PInteger; parse_header: Integer): PUTF8Char; cdecl;
  stbi_zlib_decode_malloc: function(const buffer: PUTF8Char; len: Integer; outlen: PInteger): PUTF8Char; cdecl;
  stbi_zlib_decode_buffer: function(obuffer: PUTF8Char; olen: Integer; const ibuffer: PUTF8Char; ilen: Integer): Integer; cdecl;
  stbi_zlib_decode_noheader_malloc: function(const buffer: PUTF8Char; len: Integer; outlen: PInteger): PUTF8Char; cdecl;
  stbi_zlib_decode_noheader_buffer: function(obuffer: PUTF8Char; olen: Integer; const ibuffer: PUTF8Char; ilen: Integer): Integer; cdecl;
  stbi_write_png: function(const filename: PUTF8Char; w: Integer; h: Integer; comp: Integer; const data: Pointer; stride_in_bytes: Integer): Integer; cdecl;
  stbi_write_bmp: function(const filename: PUTF8Char; w: Integer; h: Integer; comp: Integer; const data: Pointer): Integer; cdecl;
  stbi_write_tga: function(const filename: PUTF8Char; w: Integer; h: Integer; comp: Integer; const data: Pointer): Integer; cdecl;
  stbi_write_hdr: function(const filename: PUTF8Char; w: Integer; h: Integer; comp: Integer; const data: PSingle): Integer; cdecl;
  stbi_write_jpg: function(const filename: PUTF8Char; x: Integer; y: Integer; comp: Integer; const data: Pointer; quality: Integer): Integer; cdecl;
  stbi_write_png_to_func: function(func: Pstbi_write_func; context: Pointer; w: Integer; h: Integer; comp: Integer; const data: Pointer; stride_in_bytes: Integer): Integer; cdecl;
  stbi_write_bmp_to_func: function(func: Pstbi_write_func; context: Pointer; w: Integer; h: Integer; comp: Integer; const data: Pointer): Integer; cdecl;
  stbi_write_tga_to_func: function(func: Pstbi_write_func; context: Pointer; w: Integer; h: Integer; comp: Integer; const data: Pointer): Integer; cdecl;
  stbi_write_hdr_to_func: function(func: Pstbi_write_func; context: Pointer; w: Integer; h: Integer; comp: Integer; const data: PSingle): Integer; cdecl;
  stbi_write_jpg_to_func: function(func: Pstbi_write_func; context: Pointer; x: Integer; y: Integer; comp: Integer; const data: Pointer; quality: Integer): Integer; cdecl;
  stbi_flip_vertically_on_write: procedure(flip_boolean: Integer); cdecl;
  plm_create_with_filename: function(const filename: PUTF8Char): Pplm_t; cdecl;
  plm_create_with_file: function(fh: PPointer; close_when_done: Integer): Pplm_t; cdecl;
  plm_create_with_memory: function(bytes: PUInt8; length: NativeUInt; free_when_done: Integer): Pplm_t; cdecl;
  plm_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_t; cdecl;
  plm_destroy: procedure(self: Pplm_t); cdecl;
  plm_has_headers: function(self: Pplm_t): Integer; cdecl;
  plm_get_video_enabled: function(self: Pplm_t): Integer; cdecl;
  plm_set_video_enabled: procedure(self: Pplm_t; enabled: Integer); cdecl;
  plm_get_num_video_streams: function(self: Pplm_t): Integer; cdecl;
  plm_get_width: function(self: Pplm_t): Integer; cdecl;
  plm_get_height: function(self: Pplm_t): Integer; cdecl;
  plm_get_framerate: function(self: Pplm_t): Double; cdecl;
  plm_get_audio_enabled: function(self: Pplm_t): Integer; cdecl;
  plm_set_audio_enabled: procedure(self: Pplm_t; enabled: Integer); cdecl;
  plm_get_num_audio_streams: function(self: Pplm_t): Integer; cdecl;
  plm_set_audio_stream: procedure(self: Pplm_t; stream_index: Integer); cdecl;
  plm_get_samplerate: function(self: Pplm_t): Integer; cdecl;
  plm_get_audio_lead_time: function(self: Pplm_t): Double; cdecl;
  plm_set_audio_lead_time: procedure(self: Pplm_t; lead_time: Double); cdecl;
  plm_get_time: function(self: Pplm_t): Double; cdecl;
  plm_get_duration: function(self: Pplm_t): Double; cdecl;
  plm_rewind: procedure(self: Pplm_t); cdecl;
  plm_get_loop: function(self: Pplm_t): Integer; cdecl;
  plm_set_loop: procedure(self: Pplm_t; loop: Integer); cdecl;
  plm_has_ended: function(self: Pplm_t): Integer; cdecl;
  plm_set_video_decode_callback: procedure(self: Pplm_t; fp: plm_video_decode_callback; user: Pointer); cdecl;
  plm_set_audio_decode_callback: procedure(self: Pplm_t; fp: plm_audio_decode_callback; user: Pointer); cdecl;
  plm_decode: procedure(self: Pplm_t; seconds: Double); cdecl;
  plm_decode_video: function(self: Pplm_t): Pplm_frame_t; cdecl;
  plm_decode_audio: function(self: Pplm_t): Pplm_samples_t; cdecl;
  plm_seek: function(self: Pplm_t; time: Double; seek_exact: Integer): Integer; cdecl;
  plm_seek_frame: function(self: Pplm_t; time: Double; seek_exact: Integer): Pplm_frame_t; cdecl;
  plm_buffer_create_with_filename: function(const filename: PUTF8Char): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_file: function(fh: PPointer; close_when_done: Integer): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_memory: function(bytes: PUInt8; length: NativeUInt; free_when_done: Integer): Pplm_buffer_t; cdecl;
  plm_buffer_create_with_capacity: function(capacity: NativeUInt): Pplm_buffer_t; cdecl;
  plm_buffer_create_for_appending: function(initial_capacity: NativeUInt): Pplm_buffer_t; cdecl;
  plm_buffer_destroy: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_write: function(self: Pplm_buffer_t; bytes: PUInt8; length: NativeUInt): NativeUInt; cdecl;
  plm_buffer_signal_end: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_set_load_callback: procedure(self: Pplm_buffer_t; fp: plm_buffer_load_callback; user: Pointer); cdecl;
  plm_buffer_rewind: procedure(self: Pplm_buffer_t); cdecl;
  plm_buffer_get_size: function(self: Pplm_buffer_t): NativeUInt; cdecl;
  plm_buffer_get_remaining: function(self: Pplm_buffer_t): NativeUInt; cdecl;
  plm_buffer_has_ended: function(self: Pplm_buffer_t): Integer; cdecl;
  plm_demux_create: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_demux_t; cdecl;
  plm_demux_destroy: procedure(self: Pplm_demux_t); cdecl;
  plm_demux_has_headers: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_get_num_video_streams: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_get_num_audio_streams: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_rewind: procedure(self: Pplm_demux_t); cdecl;
  plm_demux_has_ended: function(self: Pplm_demux_t): Integer; cdecl;
  plm_demux_seek: function(self: Pplm_demux_t; time: Double; type_: Integer; force_intra: Integer): Pplm_packet_t; cdecl;
  plm_demux_get_start_time: function(self: Pplm_demux_t; type_: Integer): Double; cdecl;
  plm_demux_get_duration: function(self: Pplm_demux_t; type_: Integer): Double; cdecl;
  plm_demux_decode: function(self: Pplm_demux_t): Pplm_packet_t; cdecl;
  plm_video_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_video_t; cdecl;
  plm_video_destroy: procedure(self: Pplm_video_t); cdecl;
  plm_video_has_header: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_get_framerate: function(self: Pplm_video_t): Double; cdecl;
  plm_video_get_width: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_get_height: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_set_no_delay: procedure(self: Pplm_video_t; no_delay: Integer); cdecl;
  plm_video_get_time: function(self: Pplm_video_t): Double; cdecl;
  plm_video_set_time: procedure(self: Pplm_video_t; time: Double); cdecl;
  plm_video_rewind: procedure(self: Pplm_video_t); cdecl;
  plm_video_has_ended: function(self: Pplm_video_t): Integer; cdecl;
  plm_video_decode: function(self: Pplm_video_t): Pplm_frame_t; cdecl;
  plm_frame_to_rgb: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_bgr: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_rgba: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_bgra: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_argb: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_frame_to_abgr: procedure(frame: Pplm_frame_t; dest: PUInt8; stride: Integer); cdecl;
  plm_audio_create_with_buffer: function(buffer: Pplm_buffer_t; destroy_when_done: Integer): Pplm_audio_t; cdecl;
  plm_audio_destroy: procedure(self: Pplm_audio_t); cdecl;
  plm_audio_has_header: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_get_samplerate: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_get_time: function(self: Pplm_audio_t): Double; cdecl;
  plm_audio_set_time: procedure(self: Pplm_audio_t; time: Double); cdecl;
  plm_audio_rewind: procedure(self: Pplm_audio_t); cdecl;
  plm_audio_has_ended: function(self: Pplm_audio_t): Integer; cdecl;
  plm_audio_decode: function(self: Pplm_audio_t): Pplm_samples_t; cdecl;
  nk_init_default: function(p1: Pnk_context; const p2: Pnk_user_font): nk_bool; cdecl;
  nk_init_fixed: function(p1: Pnk_context; memory: Pointer; size: nk_size; const p4: Pnk_user_font): nk_bool; cdecl;
  nk_init: function(p1: Pnk_context; p2: Pnk_allocator; const p3: Pnk_user_font): nk_bool; cdecl;
  nk_init_custom: function(p1: Pnk_context; cmds: Pnk_buffer; pool: Pnk_buffer; const p4: Pnk_user_font): nk_bool; cdecl;
  nk_clear: procedure(p1: Pnk_context); cdecl;
  nk_free: procedure(p1: Pnk_context); cdecl;
  nk_input_begin: procedure(p1: Pnk_context); cdecl;
  nk_input_motion: procedure(p1: Pnk_context; x: Integer; y: Integer); cdecl;
  nk_input_key: procedure(p1: Pnk_context; p2: nk_keys; down: nk_bool); cdecl;
  nk_input_button: procedure(p1: Pnk_context; p2: nk_buttons; x: Integer; y: Integer; down: nk_bool); cdecl;
  nk_input_scroll: procedure(p1: Pnk_context; val: nk_vec2); cdecl;
  nk_input_char: procedure(p1: Pnk_context; p2: UTF8Char); cdecl;
  nk_input_glyph: procedure(p1: Pnk_context; const p2: nk_glyph); cdecl;
  nk_input_unicode: procedure(p1: Pnk_context; p2: nk_rune); cdecl;
  nk_input_end: procedure(p1: Pnk_context); cdecl;
  nk__begin: function(p1: Pnk_context): Pnk_command; cdecl;
  nk__next: function(p1: Pnk_context; const p2: Pnk_command): Pnk_command; cdecl;
  nk_convert: function(p1: Pnk_context; cmds: Pnk_buffer; vertices: Pnk_buffer; elements: Pnk_buffer; const p5: Pnk_convert_config): nk_flags; cdecl;
  nk__draw_begin: function(const p1: Pnk_context; const p2: Pnk_buffer): Pnk_draw_command; cdecl;
  nk__draw_end: function(const p1: Pnk_context; const p2: Pnk_buffer): Pnk_draw_command; cdecl;
  nk__draw_next: function(const p1: Pnk_draw_command; const p2: Pnk_buffer; const p3: Pnk_context): Pnk_draw_command; cdecl;
  nk_begin: function(ctx: Pnk_context; const title: PUTF8Char; bounds: nk_rect; flags: nk_flags): nk_bool; cdecl;
  nk_begin_titled: function(ctx: Pnk_context; const name: PUTF8Char; const title: PUTF8Char; bounds: nk_rect; flags: nk_flags): nk_bool; cdecl;
  nk_end: procedure(ctx: Pnk_context); cdecl;
  nk_window_find: function(ctx: Pnk_context; const name: PUTF8Char): Pnk_window; cdecl;
  nk_window_get_bounds: function(const ctx: Pnk_context): nk_rect; cdecl;
  nk_window_get_position: function(const ctx: Pnk_context): nk_vec2; cdecl;
  nk_window_get_size: function(const p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_width: function(const p1: Pnk_context): Single; cdecl;
  nk_window_get_height: function(const p1: Pnk_context): Single; cdecl;
  nk_window_get_panel: function(p1: Pnk_context): Pnk_panel; cdecl;
  nk_window_get_content_region: function(p1: Pnk_context): nk_rect; cdecl;
  nk_window_get_content_region_min: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_content_region_max: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_content_region_size: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_window_get_canvas: function(p1: Pnk_context): Pnk_command_buffer; cdecl;
  nk_window_get_scroll: procedure(p1: Pnk_context; offset_x: Pnk_uint; offset_y: Pnk_uint); cdecl;
  nk_window_has_focus: function(const p1: Pnk_context): nk_bool; cdecl;
  nk_window_is_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_window_is_collapsed: function(ctx: Pnk_context; const name: PUTF8Char): nk_bool; cdecl;
  nk_window_is_closed: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_hidden: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_active: function(p1: Pnk_context; const p2: PUTF8Char): nk_bool; cdecl;
  nk_window_is_any_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_item_is_any_active: function(p1: Pnk_context): nk_bool; cdecl;
  nk_window_set_bounds: procedure(p1: Pnk_context; const name: PUTF8Char; bounds: nk_rect); cdecl;
  nk_window_set_position: procedure(p1: Pnk_context; const name: PUTF8Char; pos: nk_vec2); cdecl;
  nk_window_set_size: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_vec2); cdecl;
  nk_window_set_focus: procedure(p1: Pnk_context; const name: PUTF8Char); cdecl;
  nk_window_set_scroll: procedure(p1: Pnk_context; offset_x: nk_uint; offset_y: nk_uint); cdecl;
  nk_window_close: procedure(ctx: Pnk_context; const name: PUTF8Char); cdecl;
  nk_window_collapse: procedure(p1: Pnk_context; const name: PUTF8Char; state: nk_collapse_states); cdecl;
  nk_window_collapse_if: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_collapse_states; cond: Integer); cdecl;
  nk_window_show: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_show_states); cdecl;
  nk_window_show_if: procedure(p1: Pnk_context; const name: PUTF8Char; p3: nk_show_states; cond: Integer); cdecl;
  nk_layout_set_min_row_height: procedure(p1: Pnk_context; height: Single); cdecl;
  nk_layout_reset_min_row_height: procedure(p1: Pnk_context); cdecl;
  nk_layout_widget_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_layout_ratio_from_pixel: function(p1: Pnk_context; pixel_width: Single): Single; cdecl;
  nk_layout_row_dynamic: procedure(ctx: Pnk_context; height: Single; cols: Integer); cdecl;
  nk_layout_row_static: procedure(ctx: Pnk_context; height: Single; item_width: Integer; cols: Integer); cdecl;
  nk_layout_row_begin: procedure(ctx: Pnk_context; fmt: nk_layout_format; row_height: Single; cols: Integer); cdecl;
  nk_layout_row_push: procedure(p1: Pnk_context; value: Single); cdecl;
  nk_layout_row_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_row: procedure(p1: Pnk_context; p2: nk_layout_format; height: Single; cols: Integer; const ratio: PSingle); cdecl;
  nk_layout_row_template_begin: procedure(p1: Pnk_context; row_height: Single); cdecl;
  nk_layout_row_template_push_dynamic: procedure(p1: Pnk_context); cdecl;
  nk_layout_row_template_push_variable: procedure(p1: Pnk_context; min_width: Single); cdecl;
  nk_layout_row_template_push_static: procedure(p1: Pnk_context; width: Single); cdecl;
  nk_layout_row_template_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_space_begin: procedure(p1: Pnk_context; p2: nk_layout_format; height: Single; widget_count: Integer); cdecl;
  nk_layout_space_push: procedure(p1: Pnk_context; bounds: nk_rect); cdecl;
  nk_layout_space_end: procedure(p1: Pnk_context); cdecl;
  nk_layout_space_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_layout_space_to_screen: function(p1: Pnk_context; p2: nk_vec2): nk_vec2; cdecl;
  nk_layout_space_to_local: function(p1: Pnk_context; p2: nk_vec2): nk_vec2; cdecl;
  nk_layout_space_rect_to_screen: function(p1: Pnk_context; p2: nk_rect): nk_rect; cdecl;
  nk_layout_space_rect_to_local: function(p1: Pnk_context; p2: nk_rect): nk_rect; cdecl;
  nk_spacer: procedure(p1: Pnk_context); cdecl;
  nk_group_begin: function(p1: Pnk_context; const title: PUTF8Char; p3: nk_flags): nk_bool; cdecl;
  nk_group_begin_titled: function(p1: Pnk_context; const name: PUTF8Char; const title: PUTF8Char; p4: nk_flags): nk_bool; cdecl;
  nk_group_end: procedure(p1: Pnk_context); cdecl;
  nk_group_scrolled_offset_begin: function(p1: Pnk_context; x_offset: Pnk_uint; y_offset: Pnk_uint; const title: PUTF8Char; flags: nk_flags): nk_bool; cdecl;
  nk_group_scrolled_begin: function(p1: Pnk_context; off: Pnk_scroll; const title: PUTF8Char; p4: nk_flags): nk_bool; cdecl;
  nk_group_scrolled_end: procedure(p1: Pnk_context); cdecl;
  nk_group_get_scroll: procedure(p1: Pnk_context; const id: PUTF8Char; x_offset: Pnk_uint; y_offset: Pnk_uint); cdecl;
  nk_group_set_scroll: procedure(p1: Pnk_context; const id: PUTF8Char; x_offset: nk_uint; y_offset: nk_uint); cdecl;
  nk_tree_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; initial_state: nk_collapse_states; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_image_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; initial_state: nk_collapse_states; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_pop: procedure(p1: Pnk_context); cdecl;
  nk_tree_state_push: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; state: Pnk_collapse_states): nk_bool; cdecl;
  nk_tree_state_image_push: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; state: Pnk_collapse_states): nk_bool; cdecl;
  nk_tree_state_pop: procedure(p1: Pnk_context); cdecl;
  nk_tree_element_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; const title: PUTF8Char; initial_state: nk_collapse_states; selected: Pnk_bool; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_element_image_push_hashed: function(p1: Pnk_context; p2: nk_tree_type; p3: nk_image; const title: PUTF8Char; initial_state: nk_collapse_states; selected: Pnk_bool; const hash: PUTF8Char; len: Integer; seed: Integer): nk_bool; cdecl;
  nk_tree_element_pop: procedure(p1: Pnk_context); cdecl;
  nk_list_view_begin: function(p1: Pnk_context; out_: Pnk_list_view; const id: PUTF8Char; p4: nk_flags; row_height: Integer; row_count: Integer): nk_bool; cdecl;
  nk_list_view_end: procedure(p1: Pnk_list_view); cdecl;
  nk_widget: function(p1: Pnk_rect; const p2: Pnk_context): nk_widget_layout_states; cdecl;
  nk_widget_fitting: function(p1: Pnk_rect; p2: Pnk_context; p3: nk_vec2): nk_widget_layout_states; cdecl;
  nk_widget_bounds: function(p1: Pnk_context): nk_rect; cdecl;
  nk_widget_position: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_widget_size: function(p1: Pnk_context): nk_vec2; cdecl;
  nk_widget_width: function(p1: Pnk_context): Single; cdecl;
  nk_widget_height: function(p1: Pnk_context): Single; cdecl;
  nk_widget_is_hovered: function(p1: Pnk_context): nk_bool; cdecl;
  nk_widget_is_mouse_clicked: function(p1: Pnk_context; p2: nk_buttons): nk_bool; cdecl;
  nk_widget_has_mouse_click_down: function(p1: Pnk_context; p2: nk_buttons; down: nk_bool): nk_bool; cdecl;
  nk_spacing: procedure(p1: Pnk_context; cols: Integer); cdecl;
  nk_text: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_flags); cdecl;
  nk_text_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_flags; p5: nk_color); cdecl;
  nk_text_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer); cdecl;
  nk_text_wrap_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; p4: nk_color); cdecl;
  nk_label: procedure(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags); cdecl;
  nk_label_colored: procedure(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_color); cdecl;
  nk_label_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char); cdecl;
  nk_label_colored_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: nk_color); cdecl;
  nk_image_rtn: procedure(p1: Pnk_context; p2: nk_image); cdecl;
  nk_image_color: procedure(p1: Pnk_context; p2: nk_image; p3: nk_color); cdecl;
  nk_labelf: procedure(p1: Pnk_context; p2: nk_flags; const p3: PUTF8Char) varargs; cdecl;
  nk_labelf_colored: procedure(p1: Pnk_context; p2: nk_flags; p3: nk_color; const p4: PUTF8Char) varargs; cdecl;
  nk_labelf_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char) varargs; cdecl;
  nk_labelf_colored_wrap: procedure(p1: Pnk_context; p2: nk_color; const p3: PUTF8Char) varargs; cdecl;
  nk_labelfv: procedure(p1: Pnk_context; p2: nk_flags; const p3: PUTF8Char; p4: Pointer); cdecl;
  nk_labelfv_colored: procedure(p1: Pnk_context; p2: nk_flags; p3: nk_color; const p4: PUTF8Char; p5: Pointer); cdecl;
  nk_labelfv_wrap: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Pointer); cdecl;
  nk_labelfv_colored_wrap: procedure(p1: Pnk_context; p2: nk_color; const p3: PUTF8Char; p4: Pointer); cdecl;
  nk_value_bool: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Integer); cdecl;
  nk_value_int: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Integer); cdecl;
  nk_value_uint: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Cardinal); cdecl;
  nk_value_float: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: Single); cdecl;
  nk_value_color_byte: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_value_color_float: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_value_color_hex: procedure(p1: Pnk_context; const prefix: PUTF8Char; p3: nk_color); cdecl;
  nk_button_text: function(p1: Pnk_context; const title: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_button_label: function(p1: Pnk_context; const title: PUTF8Char): nk_bool; cdecl;
  nk_button_color: function(p1: Pnk_context; p2: nk_color): nk_bool; cdecl;
  nk_button_symbol: function(p1: Pnk_context; p2: nk_symbol_type): nk_bool; cdecl;
  nk_button_image: function(p1: Pnk_context; img: nk_image): nk_bool; cdecl;
  nk_button_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_label: function(p1: Pnk_context; img: nk_image; const p3: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_text: function(p1: Pnk_context; img: nk_image; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; const title: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_button_label_styled: function(p1: Pnk_context; const p2: Pnk_style_button; const title: PUTF8Char): nk_bool; cdecl;
  nk_button_symbol_styled: function(p1: Pnk_context; const p2: Pnk_style_button; p3: nk_symbol_type): nk_bool; cdecl;
  nk_button_image_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image): nk_bool; cdecl;
  nk_button_symbol_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; p3: nk_symbol_type; const p4: PUTF8Char; p5: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_symbol_label_styled: function(ctx: Pnk_context; const style: Pnk_style_button; symbol: nk_symbol_type; const title: PUTF8Char; align: nk_flags): nk_bool; cdecl;
  nk_button_image_label_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image; const p4: PUTF8Char; text_alignment: nk_flags): nk_bool; cdecl;
  nk_button_image_text_styled: function(p1: Pnk_context; const p2: Pnk_style_button; img: nk_image; const p4: PUTF8Char; p5: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_button_set_behavior: procedure(p1: Pnk_context; p2: nk_button_behavior); cdecl;
  nk_button_push_behavior: function(p1: Pnk_context; p2: nk_button_behavior): nk_bool; cdecl;
  nk_button_pop_behavior: function(p1: Pnk_context): nk_bool; cdecl;
  nk_check_label: function(p1: Pnk_context; const p2: PUTF8Char; active: nk_bool): nk_bool; cdecl;
  nk_check_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: nk_bool): nk_bool; cdecl;
  nk_check_flags_label: function(p1: Pnk_context; const p2: PUTF8Char; flags: Cardinal; value: Cardinal): Cardinal; cdecl;
  nk_check_flags_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; flags: Cardinal; value: Cardinal): Cardinal; cdecl;
  nk_checkbox_label: function(p1: Pnk_context; const p2: PUTF8Char; active: Pnk_bool): nk_bool; cdecl;
  nk_checkbox_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: Pnk_bool): nk_bool; cdecl;
  nk_checkbox_flags_label: function(p1: Pnk_context; const p2: PUTF8Char; flags: PCardinal; value: Cardinal): nk_bool; cdecl;
  nk_checkbox_flags_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; flags: PCardinal; value: Cardinal): nk_bool; cdecl;
  nk_radio_label: function(p1: Pnk_context; const p2: PUTF8Char; active: Pnk_bool): nk_bool; cdecl;
  nk_radio_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: Pnk_bool): nk_bool; cdecl;
  nk_option_label: function(p1: Pnk_context; const p2: PUTF8Char; active: nk_bool): nk_bool; cdecl;
  nk_option_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; active: nk_bool): nk_bool; cdecl;
  nk_selectable_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_selectable_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: Pnk_bool): nk_bool; cdecl;
  nk_select_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_select_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; align: nk_flags; value: nk_bool): nk_bool; cdecl;
  nk_slide_float: function(p1: Pnk_context; min: Single; val: Single; max: Single; step: Single): Single; cdecl;
  nk_slide_int: function(p1: Pnk_context; min: Integer; val: Integer; max: Integer; step: Integer): Integer; cdecl;
  nk_slider_float: function(p1: Pnk_context; min: Single; val: PSingle; max: Single; step: Single): nk_bool; cdecl;
  nk_slider_int: function(p1: Pnk_context; min: Integer; val: PInteger; max: Integer; step: Integer): nk_bool; cdecl;
  nk_progress: function(p1: Pnk_context; cur: Pnk_size; max: nk_size; modifyable: nk_bool): nk_bool; cdecl;
  nk_prog: function(p1: Pnk_context; cur: nk_size; max: nk_size; modifyable: nk_bool): nk_size; cdecl;
  nk_color_picker: function(p1: Pnk_context; p2: nk_colorf; p3: nk_color_format): nk_colorf; cdecl;
  nk_color_pick: function(p1: Pnk_context; p2: Pnk_colorf; p3: nk_color_format): nk_bool; cdecl;
  nk_property_int: procedure(p1: Pnk_context; const name: PUTF8Char; min: Integer; val: PInteger; max: Integer; step: Integer; inc_per_pixel: Single); cdecl;
  nk_property_float: procedure(p1: Pnk_context; const name: PUTF8Char; min: Single; val: PSingle; max: Single; step: Single; inc_per_pixel: Single); cdecl;
  nk_property_double: procedure(p1: Pnk_context; const name: PUTF8Char; min: Double; val: PDouble; max: Double; step: Double; inc_per_pixel: Single); cdecl;
  nk_propertyi: function(p1: Pnk_context; const name: PUTF8Char; min: Integer; val: Integer; max: Integer; step: Integer; inc_per_pixel: Single): Integer; cdecl;
  nk_propertyf: function(p1: Pnk_context; const name: PUTF8Char; min: Single; val: Single; max: Single; step: Single; inc_per_pixel: Single): Single; cdecl;
  nk_propertyd: function(p1: Pnk_context; const name: PUTF8Char; min: Double; val: Double; max: Double; step: Double; inc_per_pixel: Single): Double; cdecl;
  nk_edit_string: function(p1: Pnk_context; p2: nk_flags; buffer: PUTF8Char; len: PInteger; max: Integer; p6: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_string_zero_terminated: function(p1: Pnk_context; p2: nk_flags; buffer: PUTF8Char; max: Integer; p5: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_buffer: function(p1: Pnk_context; p2: nk_flags; p3: Pnk_text_edit; p4: nk_plugin_filter): nk_flags; cdecl;
  nk_edit_focus: procedure(p1: Pnk_context; flags: nk_flags); cdecl;
  nk_edit_unfocus: procedure(p1: Pnk_context); cdecl;
  nk_chart_begin: function(p1: Pnk_context; p2: nk_chart_type; num: Integer; min: Single; max: Single): nk_bool; cdecl;
  nk_chart_begin_colored: function(p1: Pnk_context; p2: nk_chart_type; p3: nk_color; active: nk_color; num: Integer; min: Single; max: Single): nk_bool; cdecl;
  nk_chart_add_slot: procedure(ctx: Pnk_context; const p2: nk_chart_type; count: Integer; min_value: Single; max_value: Single); cdecl;
  nk_chart_add_slot_colored: procedure(ctx: Pnk_context; const p2: nk_chart_type; p3: nk_color; active: nk_color; count: Integer; min_value: Single; max_value: Single); cdecl;
  nk_chart_push: function(p1: Pnk_context; p2: Single): nk_flags; cdecl;
  nk_chart_push_slot: function(p1: Pnk_context; p2: Single; p3: Integer): nk_flags; cdecl;
  nk_chart_end: procedure(p1: Pnk_context); cdecl;
  nk_plot: procedure(p1: Pnk_context; p2: nk_chart_type; const values: PSingle; count: Integer; offset: Integer); cdecl;
  nk_plot_function: procedure(p1: Pnk_context; p2: nk_chart_type; userdata: Pointer; value_getter: nk_plot_function_value_getter; count: Integer; offset: Integer); cdecl;
  nk_popup_begin: function(p1: Pnk_context; p2: nk_popup_type; const p3: PUTF8Char; p4: nk_flags; bounds: nk_rect): nk_bool; cdecl;
  nk_popup_close: procedure(p1: Pnk_context); cdecl;
  nk_popup_end: procedure(p1: Pnk_context); cdecl;
  nk_popup_get_scroll: procedure(p1: Pnk_context; offset_x: Pnk_uint; offset_y: Pnk_uint); cdecl;
  nk_popup_set_scroll: procedure(p1: Pnk_context; offset_x: nk_uint; offset_y: nk_uint); cdecl;
  nk_combo: function(p1: Pnk_context; items: PPUTF8Char; count: Integer; selected: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_separator: function(p1: Pnk_context; const items_separated_by_separator: PUTF8Char; separator: Integer; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_string: function(p1: Pnk_context; const items_separated_by_zeros: PUTF8Char; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combo_callback: function(p1: Pnk_context; item_getter: nk_combo_callback_item_getter; userdata: Pointer; selected: Integer; count: Integer; item_height: Integer; size: nk_vec2): Integer; cdecl;
  nk_combobox: procedure(p1: Pnk_context; items: PPUTF8Char; count: Integer; selected: PInteger; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_string: procedure(p1: Pnk_context; const items_separated_by_zeros: PUTF8Char; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_separator: procedure(p1: Pnk_context; const items_separated_by_separator: PUTF8Char; separator: Integer; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_combobox_callback: procedure(p1: Pnk_context; item_getter: nk_combobox_callback_item_getter; p3: Pointer; selected: PInteger; count: Integer; item_height: Integer; size: nk_vec2); cdecl;
  nk_combo_begin_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_label: function(p1: Pnk_context; const selected: PUTF8Char; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_color: function(p1: Pnk_context; color: nk_color; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol: function(p1: Pnk_context; p2: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol_label: function(p1: Pnk_context; const selected: PUTF8Char; p3: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_symbol_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; p4: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image: function(p1: Pnk_context; img: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image_label: function(p1: Pnk_context; const selected: PUTF8Char; p3: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_begin_image_text: function(p1: Pnk_context; const selected: PUTF8Char; p3: Integer; p4: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_combo_item_label: function(p1: Pnk_context; const p2: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_combo_close: procedure(p1: Pnk_context); cdecl;
  nk_combo_end: procedure(p1: Pnk_context); cdecl;
  nk_contextual_begin: function(p1: Pnk_context; p2: nk_flags; p3: nk_vec2; trigger_bounds: nk_rect): nk_bool; cdecl;
  nk_contextual_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags): nk_bool; cdecl;
  nk_contextual_item_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags): nk_bool; cdecl;
  nk_contextual_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; len: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_contextual_close: procedure(p1: Pnk_context); cdecl;
  nk_contextual_end: procedure(p1: Pnk_context); cdecl;
  nk_tooltip: procedure(p1: Pnk_context; const p2: PUTF8Char); cdecl;
  nk_tooltipf: procedure(p1: Pnk_context; const p2: PUTF8Char) varargs; cdecl;
  nk_tooltipfv: procedure(p1: Pnk_context; const p2: PUTF8Char; p3: Pointer); cdecl;
  nk_tooltip_begin: function(p1: Pnk_context; width: Single): nk_bool; cdecl;
  nk_tooltip_end: procedure(p1: Pnk_context); cdecl;
  nk_menubar_begin: procedure(p1: Pnk_context); cdecl;
  nk_menubar_end: procedure(p1: Pnk_context); cdecl;
  nk_menu_begin_text: function(p1: Pnk_context; const title: PUTF8Char; title_len: Integer; align: nk_flags; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_image: function(p1: Pnk_context; const p2: PUTF8Char; p3: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_image_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; p5: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_image_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_image; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol: function(p1: Pnk_context; const p2: PUTF8Char; p3: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags; p5: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_begin_symbol_label: function(p1: Pnk_context; const p2: PUTF8Char; align: nk_flags; p4: nk_symbol_type; size: nk_vec2): nk_bool; cdecl;
  nk_menu_item_text: function(p1: Pnk_context; const p2: PUTF8Char; p3: Integer; align: nk_flags): nk_bool; cdecl;
  nk_menu_item_label: function(p1: Pnk_context; const p2: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_image_label: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_image_text: function(p1: Pnk_context; p2: nk_image; const p3: PUTF8Char; len: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_symbol_text: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; p4: Integer; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_item_symbol_label: function(p1: Pnk_context; p2: nk_symbol_type; const p3: PUTF8Char; alignment: nk_flags): nk_bool; cdecl;
  nk_menu_close: procedure(p1: Pnk_context); cdecl;
  nk_menu_end: procedure(p1: Pnk_context); cdecl;
  nk_style_default: procedure(p1: Pnk_context); cdecl;
  nk_style_from_table: procedure(p1: Pnk_context; const p2: Pnk_color); cdecl;
  nk_style_load_cursor: procedure(p1: Pnk_context; p2: nk_style_cursor; const p3: Pnk_cursor); cdecl;
  nk_style_load_all_cursors: procedure(p1: Pnk_context; p2: Pnk_cursor); cdecl;
  nk_style_get_color_by_name: function(p1: nk_style_colors): PUTF8Char; cdecl;
  nk_style_set_font: procedure(p1: Pnk_context; const p2: Pnk_user_font); cdecl;
  nk_style_set_cursor: function(p1: Pnk_context; p2: nk_style_cursor): nk_bool; cdecl;
  nk_style_show_cursor: procedure(p1: Pnk_context); cdecl;
  nk_style_hide_cursor: procedure(p1: Pnk_context); cdecl;
  nk_style_push_font: function(p1: Pnk_context; const p2: Pnk_user_font): nk_bool; cdecl;
  nk_style_push_float: function(p1: Pnk_context; p2: PSingle; p3: Single): nk_bool; cdecl;
  nk_style_push_vec2: function(p1: Pnk_context; p2: Pnk_vec2; p3: nk_vec2): nk_bool; cdecl;
  nk_style_push_style_item: function(p1: Pnk_context; p2: Pnk_style_item; p3: nk_style_item): nk_bool; cdecl;
  nk_style_push_flags: function(p1: Pnk_context; p2: Pnk_flags; p3: nk_flags): nk_bool; cdecl;
  nk_style_push_color: function(p1: Pnk_context; p2: Pnk_color; p3: nk_color): nk_bool; cdecl;
  nk_style_pop_font: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_float: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_vec2: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_style_item: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_flags: function(p1: Pnk_context): nk_bool; cdecl;
  nk_style_pop_color: function(p1: Pnk_context): nk_bool; cdecl;
  nk_rgb_rtn: function(r: Integer; g: Integer; b: Integer): nk_color; cdecl;
  nk_rgb_iv: function(const rgb: PInteger): nk_color; cdecl;
  nk_rgb_bv: function(const rgb: Pnk_byte): nk_color; cdecl;
  nk_rgb_f: function(r: Single; g: Single; b: Single): nk_color; cdecl;
  nk_rgb_fv: function(const rgb: PSingle): nk_color; cdecl;
  nk_rgb_cf: function(c: nk_colorf): nk_color; cdecl;
  nk_rgb_hex: function(const rgb: PUTF8Char): nk_color; cdecl;
  nk_rgba_rtn: function(r: Integer; g: Integer; b: Integer; a: Integer): nk_color; cdecl;
  nk_rgba_u32: function(p1: nk_uint): nk_color; cdecl;
  nk_rgba_iv: function(const rgba: PInteger): nk_color; cdecl;
  nk_rgba_bv: function(const rgba: Pnk_byte): nk_color; cdecl;
  nk_rgba_f: function(r: Single; g: Single; b: Single; a: Single): nk_color; cdecl;
  nk_rgba_fv: function(const rgba: PSingle): nk_color; cdecl;
  nk_rgba_cf: function(c: nk_colorf): nk_color; cdecl;
  nk_rgba_hex: function(const rgb: PUTF8Char): nk_color; cdecl;
  nk_hsva_colorf: function(h: Single; s: Single; v: Single; a: Single): nk_colorf; cdecl;
  nk_hsva_colorfv: function(c: PSingle): nk_colorf; cdecl;
  nk_colorf_hsva_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; out_a: PSingle; in_: nk_colorf); cdecl;
  nk_colorf_hsva_fv: procedure(hsva: PSingle; in_: nk_colorf); cdecl;
  nk_hsv: function(h: Integer; s: Integer; v: Integer): nk_color; cdecl;
  nk_hsv_iv: function(const hsv: PInteger): nk_color; cdecl;
  nk_hsv_bv: function(const hsv: Pnk_byte): nk_color; cdecl;
  nk_hsv_f: function(h: Single; s: Single; v: Single): nk_color; cdecl;
  nk_hsv_fv: function(const hsv: PSingle): nk_color; cdecl;
  nk_hsva: function(h: Integer; s: Integer; v: Integer; a: Integer): nk_color; cdecl;
  nk_hsva_iv: function(const hsva: PInteger): nk_color; cdecl;
  nk_hsva_bv: function(const hsva: Pnk_byte): nk_color; cdecl;
  nk_hsva_f: function(h: Single; s: Single; v: Single; a: Single): nk_color; cdecl;
  nk_hsva_fv: function(const hsva: PSingle): nk_color; cdecl;
  nk_color_f: procedure(r: PSingle; g: PSingle; b: PSingle; a: PSingle; p5: nk_color); cdecl;
  nk_color_fv: procedure(rgba_out: PSingle; p2: nk_color); cdecl;
  nk_color_cf: function(p1: nk_color): nk_colorf; cdecl;
  nk_color_d: procedure(r: PDouble; g: PDouble; b: PDouble; a: PDouble; p5: nk_color); cdecl;
  nk_color_dv: procedure(rgba_out: PDouble; p2: nk_color); cdecl;
  nk_color_u32: function(p1: nk_color): nk_uint; cdecl;
  nk_color_hex_rgba: procedure(output: PUTF8Char; p2: nk_color); cdecl;
  nk_color_hex_rgb: procedure(output: PUTF8Char; p2: nk_color); cdecl;
  nk_color_hsv_i: procedure(out_h: PInteger; out_s: PInteger; out_v: PInteger; p4: nk_color); cdecl;
  nk_color_hsv_b: procedure(out_h: Pnk_byte; out_s: Pnk_byte; out_v: Pnk_byte; p4: nk_color); cdecl;
  nk_color_hsv_iv: procedure(hsv_out: PInteger; p2: nk_color); cdecl;
  nk_color_hsv_bv: procedure(hsv_out: Pnk_byte; p2: nk_color); cdecl;
  nk_color_hsv_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; p4: nk_color); cdecl;
  nk_color_hsv_fv: procedure(hsv_out: PSingle; p2: nk_color); cdecl;
  nk_color_hsva_i: procedure(h: PInteger; s: PInteger; v: PInteger; a: PInteger; p5: nk_color); cdecl;
  nk_color_hsva_b: procedure(h: Pnk_byte; s: Pnk_byte; v: Pnk_byte; a: Pnk_byte; p5: nk_color); cdecl;
  nk_color_hsva_iv: procedure(hsva_out: PInteger; p2: nk_color); cdecl;
  nk_color_hsva_bv: procedure(hsva_out: Pnk_byte; p2: nk_color); cdecl;
  nk_color_hsva_f: procedure(out_h: PSingle; out_s: PSingle; out_v: PSingle; out_a: PSingle; p5: nk_color); cdecl;
  nk_color_hsva_fv: procedure(hsva_out: PSingle; p2: nk_color); cdecl;
  nk_handle_ptr: function(p1: Pointer): nk_handle; cdecl;
  nk_handle_id: function(p1: Integer): nk_handle; cdecl;
  nk_image_handle: function(p1: nk_handle): nk_image; cdecl;
  nk_image_ptr: function(p1: Pointer): nk_image; cdecl;
  nk_image_id: function(p1: Integer): nk_image; cdecl;
  nk_image_is_subimage: function(const img: Pnk_image): nk_bool; cdecl;
  nk_subimage_ptr: function(p1: Pointer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_subimage_id: function(p1: Integer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_subimage_handle: function(p1: nk_handle; w: nk_ushort; h: nk_ushort; sub_region: nk_rect): nk_image; cdecl;
  nk_nine_slice_handle: function(p1: nk_handle; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_nine_slice_ptr: function(p1: Pointer; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_nine_slice_id: function(p1: Integer; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_nine_slice_is_sub9slice: function(const img: Pnk_nine_slice): Integer; cdecl;
  nk_sub9slice_ptr: function(p1: Pointer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_sub9slice_id: function(p1: Integer; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_sub9slice_handle: function(p1: nk_handle; w: nk_ushort; h: nk_ushort; sub_region: nk_rect; l: nk_ushort; t: nk_ushort; r: nk_ushort; b: nk_ushort): nk_nine_slice; cdecl;
  nk_murmur_hash: function(const key: Pointer; len: Integer; seed: nk_hash): nk_hash; cdecl;
  nk_triangle_from_direction: procedure(result: Pnk_vec2; r: nk_rect; pad_x: Single; pad_y: Single; p5: nk_heading); cdecl;
  nk_vec2_rtn: function(x: Single; y: Single): nk_vec2; cdecl;
  nk_vec2i_rtn: function(x: Integer; y: Integer): nk_vec2; cdecl;
  nk_vec2v: function(const xy: PSingle): nk_vec2; cdecl;
  nk_vec2iv: function(const xy: PInteger): nk_vec2; cdecl;
  nk_get_null_rect: function(): nk_rect; cdecl;
  nk_rect_rtn: function(x: Single; y: Single; w: Single; h: Single): nk_rect; cdecl;
  nk_recti_rtn: function(x: Integer; y: Integer; w: Integer; h: Integer): nk_rect; cdecl;
  nk_recta: function(pos: nk_vec2; size: nk_vec2): nk_rect; cdecl;
  nk_rectv: function(const xywh: PSingle): nk_rect; cdecl;
  nk_rectiv: function(const xywh: PInteger): nk_rect; cdecl;
  nk_rect_pos: function(p1: nk_rect): nk_vec2; cdecl;
  nk_rect_size: function(p1: nk_rect): nk_vec2; cdecl;
  nk_strlen: function(const str: PUTF8Char): Integer; cdecl;
  nk_stricmp: function(const s1: PUTF8Char; const s2: PUTF8Char): Integer; cdecl;
  nk_stricmpn: function(const s1: PUTF8Char; const s2: PUTF8Char; n: Integer): Integer; cdecl;
  nk_strtoi: function(const str: PUTF8Char; endptr: PPUTF8Char): Integer; cdecl;
  nk_strtof: function(const str: PUTF8Char; endptr: PPUTF8Char): Single; cdecl;
  nk_strtod: function(const str: PUTF8Char; endptr: PPUTF8Char): Double; cdecl;
  nk_strfilter: function(const text: PUTF8Char; const regexp: PUTF8Char): Integer; cdecl;
  nk_strmatch_fuzzy_string: function(const str: PUTF8Char; const pattern: PUTF8Char; out_score: PInteger): Integer; cdecl;
  nk_strmatch_fuzzy_text: function(const txt: PUTF8Char; txt_len: Integer; const pattern: PUTF8Char; out_score: PInteger): Integer; cdecl;
  nk_utf_decode: function(const p1: PUTF8Char; p2: Pnk_rune; p3: Integer): Integer; cdecl;
  nk_utf_encode: function(p1: nk_rune; p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_utf_len: function(const p1: PUTF8Char; byte_len: Integer): Integer; cdecl;
  nk_utf_at: function(const buffer: PUTF8Char; length: Integer; index: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_font_default_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_chinese_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_cyrillic_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_korean_glyph_ranges: function(): Pnk_rune; cdecl;
  nk_font_atlas_init_default: procedure(p1: Pnk_font_atlas); cdecl;
  nk_font_atlas_init: procedure(p1: Pnk_font_atlas; p2: Pnk_allocator); cdecl;
  nk_font_atlas_init_custom: procedure(p1: Pnk_font_atlas; persistent: Pnk_allocator; transient: Pnk_allocator); cdecl;
  nk_font_atlas_begin: procedure(p1: Pnk_font_atlas); cdecl;
  nk_font_config_rtn: function(pixel_height: Single): nk_font_config; cdecl;
  nk_font_atlas_add: function(p1: Pnk_font_atlas; const p2: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_default: function(p1: Pnk_font_atlas; height: Single; const p3: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_from_memory: function(atlas: Pnk_font_atlas; memory: Pointer; size: nk_size; height: Single; const config: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_from_file: function(atlas: Pnk_font_atlas; const file_path: PUTF8Char; height: Single; const p4: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_compressed: function(p1: Pnk_font_atlas; memory: Pointer; size: nk_size; height: Single; const p5: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_add_compressed_base85: function(p1: Pnk_font_atlas; const data: PUTF8Char; height: Single; const config: Pnk_font_config): Pnk_font; cdecl;
  nk_font_atlas_bake: function(p1: Pnk_font_atlas; width: PInteger; height: PInteger; p4: nk_font_atlas_format): Pointer; cdecl;
  nk_font_atlas_end: procedure(p1: Pnk_font_atlas; tex: nk_handle; p3: Pnk_draw_null_texture); cdecl;
  nk_font_find_glyph: function(p1: Pnk_font; unicode: nk_rune): Pnk_font_glyph; cdecl;
  nk_font_atlas_cleanup: procedure(atlas: Pnk_font_atlas); cdecl;
  nk_font_atlas_clear: procedure(p1: Pnk_font_atlas); cdecl;
  nk_buffer_init_default: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_init: procedure(p1: Pnk_buffer; const p2: Pnk_allocator; size: nk_size); cdecl;
  nk_buffer_init_fixed: procedure(p1: Pnk_buffer; memory: Pointer; size: nk_size); cdecl;
  nk_buffer_info: procedure(p1: Pnk_memory_status; p2: Pnk_buffer); cdecl;
  nk_buffer_push: procedure(p1: Pnk_buffer; type_: nk_buffer_allocation_type; const memory: Pointer; size: nk_size; align: nk_size); cdecl;
  nk_buffer_mark: procedure(p1: Pnk_buffer; type_: nk_buffer_allocation_type); cdecl;
  nk_buffer_reset: procedure(p1: Pnk_buffer; type_: nk_buffer_allocation_type); cdecl;
  nk_buffer_clear: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_free: procedure(p1: Pnk_buffer); cdecl;
  nk_buffer_memory: function(p1: Pnk_buffer): Pointer; cdecl;
  nk_buffer_memory_const: function(const p1: Pnk_buffer): Pointer; cdecl;
  nk_buffer_total: function(p1: Pnk_buffer): nk_size; cdecl;
  nk_str_init_default: procedure(p1: Pnk_str); cdecl;
  nk_str_init: procedure(p1: Pnk_str; const p2: Pnk_allocator; size: nk_size); cdecl;
  nk_str_init_fixed: procedure(p1: Pnk_str; memory: Pointer; size: nk_size); cdecl;
  nk_str_clear: procedure(p1: Pnk_str); cdecl;
  nk_str_free: procedure(p1: Pnk_str); cdecl;
  nk_str_append_text_char: function(p1: Pnk_str; const p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_str_append_str_char: function(p1: Pnk_str; const p2: PUTF8Char): Integer; cdecl;
  nk_str_append_text_utf8: function(p1: Pnk_str; const p2: PUTF8Char; p3: Integer): Integer; cdecl;
  nk_str_append_str_utf8: function(p1: Pnk_str; const p2: PUTF8Char): Integer; cdecl;
  nk_str_append_text_runes: function(p1: Pnk_str; const p2: Pnk_rune; p3: Integer): Integer; cdecl;
  nk_str_append_str_runes: function(p1: Pnk_str; const p2: Pnk_rune): Integer; cdecl;
  nk_str_insert_at_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_at_rune: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_text_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_str_char: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char): Integer; cdecl;
  nk_str_insert_text_utf8: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char; p4: Integer): Integer; cdecl;
  nk_str_insert_str_utf8: function(p1: Pnk_str; pos: Integer; const p3: PUTF8Char): Integer; cdecl;
  nk_str_insert_text_runes: function(p1: Pnk_str; pos: Integer; const p3: Pnk_rune; p4: Integer): Integer; cdecl;
  nk_str_insert_str_runes: function(p1: Pnk_str; pos: Integer; const p3: Pnk_rune): Integer; cdecl;
  nk_str_remove_chars: procedure(p1: Pnk_str; len: Integer); cdecl;
  nk_str_remove_runes: procedure(str: Pnk_str; len: Integer); cdecl;
  nk_str_delete_chars: procedure(p1: Pnk_str; pos: Integer; len: Integer); cdecl;
  nk_str_delete_runes: procedure(p1: Pnk_str; pos: Integer; len: Integer); cdecl;
  nk_str_at_char: function(p1: Pnk_str; pos: Integer): PUTF8Char; cdecl;
  nk_str_at_rune: function(p1: Pnk_str; pos: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_str_rune_at: function(const p1: Pnk_str; pos: Integer): nk_rune; cdecl;
  nk_str_at_char_const: function(const p1: Pnk_str; pos: Integer): PUTF8Char; cdecl;
  nk_str_at_const: function(const p1: Pnk_str; pos: Integer; unicode: Pnk_rune; len: PInteger): PUTF8Char; cdecl;
  nk_str_get: function(p1: Pnk_str): PUTF8Char; cdecl;
  nk_str_get_const: function(const p1: Pnk_str): PUTF8Char; cdecl;
  nk_str_len: function(p1: Pnk_str): Integer; cdecl;
  nk_str_len_char: function(p1: Pnk_str): Integer; cdecl;
  nk_filter_default: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_ascii: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_float: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_decimal: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_hex: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_oct: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_filter_binary: function(const p1: Pnk_text_edit; unicode: nk_rune): nk_bool; cdecl;
  nk_textedit_init_default: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_init: procedure(p1: Pnk_text_edit; p2: Pnk_allocator; size: nk_size); cdecl;
  nk_textedit_init_fixed: procedure(p1: Pnk_text_edit; memory: Pointer; size: nk_size); cdecl;
  nk_textedit_free: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_text: procedure(p1: Pnk_text_edit; const p2: PUTF8Char; total_len: Integer); cdecl;
  nk_textedit_delete: procedure(p1: Pnk_text_edit; where: Integer; len: Integer); cdecl;
  nk_textedit_delete_selection: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_select_all: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_cut: function(p1: Pnk_text_edit): nk_bool; cdecl;
  nk_textedit_paste: function(p1: Pnk_text_edit; const p2: PUTF8Char; len: Integer): nk_bool; cdecl;
  nk_textedit_undo: procedure(p1: Pnk_text_edit); cdecl;
  nk_textedit_redo: procedure(p1: Pnk_text_edit); cdecl;
  nk_stroke_line: procedure(b: Pnk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; line_thickness: Single; p7: nk_color); cdecl;
  nk_stroke_curve: procedure(p1: Pnk_command_buffer; p2: Single; p3: Single; p4: Single; p5: Single; p6: Single; p7: Single; p8: Single; p9: Single; line_thickness: Single; p11: nk_color); cdecl;
  nk_stroke_rect: procedure(p1: Pnk_command_buffer; p2: nk_rect; rounding: Single; line_thickness: Single; p5: nk_color); cdecl;
  nk_stroke_circle: procedure(p1: Pnk_command_buffer; p2: nk_rect; line_thickness: Single; p4: nk_color); cdecl;
  nk_stroke_arc: procedure(p1: Pnk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; line_thickness: Single; p8: nk_color); cdecl;
  nk_stroke_triangle: procedure(p1: Pnk_command_buffer; p2: Single; p3: Single; p4: Single; p5: Single; p6: Single; p7: Single; line_thichness: Single; p9: nk_color); cdecl;
  nk_stroke_polyline: procedure(p1: Pnk_command_buffer; points: PSingle; point_count: Integer; line_thickness: Single; col: nk_color); cdecl;
  nk_stroke_polygon: procedure(p1: Pnk_command_buffer; p2: PSingle; point_count: Integer; line_thickness: Single; p5: nk_color); cdecl;
  nk_fill_rect: procedure(p1: Pnk_command_buffer; p2: nk_rect; rounding: Single; p4: nk_color); cdecl;
  nk_fill_rect_multi_color: procedure(p1: Pnk_command_buffer; p2: nk_rect; left: nk_color; top: nk_color; right: nk_color; bottom: nk_color); cdecl;
  nk_fill_circle: procedure(p1: Pnk_command_buffer; p2: nk_rect; p3: nk_color); cdecl;
  nk_fill_arc: procedure(p1: Pnk_command_buffer; cx: Single; cy: Single; radius: Single; a_min: Single; a_max: Single; p7: nk_color); cdecl;
  nk_fill_triangle: procedure(p1: Pnk_command_buffer; x0: Single; y0: Single; x1: Single; y1: Single; x2: Single; y2: Single; p8: nk_color); cdecl;
  nk_fill_polygon: procedure(p1: Pnk_command_buffer; p2: PSingle; point_count: Integer; p4: nk_color); cdecl;
  nk_draw_image: procedure(p1: Pnk_command_buffer; p2: nk_rect; const p3: Pnk_image; p4: nk_color); cdecl;
  nk_draw_nine_slice: procedure(p1: Pnk_command_buffer; p2: nk_rect; const p3: Pnk_nine_slice; p4: nk_color); cdecl;
  nk_draw_text: procedure(p1: Pnk_command_buffer; p2: nk_rect; const text: PUTF8Char; len: Integer; const p5: Pnk_user_font; p6: nk_color; p7: nk_color); cdecl;
  nk_push_scissor: procedure(p1: Pnk_command_buffer; p2: nk_rect); cdecl;
  nk_push_custom: procedure(p1: Pnk_command_buffer; p2: nk_rect; p3: nk_command_custom_callback; usr: nk_handle); cdecl;
  nk_input_has_mouse_click: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_has_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_has_mouse_click_in_button_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_has_mouse_click_down_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect; down: nk_bool): nk_bool; cdecl;
  nk_input_is_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_click_down_in_rect: function(const i: Pnk_input; id: nk_buttons; b: nk_rect; down: nk_bool): nk_bool; cdecl;
  nk_input_any_mouse_click_in_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_prev_hovering_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_hovering_rect: function(const p1: Pnk_input; p2: nk_rect): nk_bool; cdecl;
  nk_input_mouse_clicked: function(const p1: Pnk_input; p2: nk_buttons; p3: nk_rect): nk_bool; cdecl;
  nk_input_is_mouse_down: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_is_mouse_pressed: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_is_mouse_released: function(const p1: Pnk_input; p2: nk_buttons): nk_bool; cdecl;
  nk_input_is_key_pressed: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_input_is_key_released: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_input_is_key_down: function(const p1: Pnk_input; p2: nk_keys): nk_bool; cdecl;
  nk_draw_list_init: procedure(p1: Pnk_draw_list); cdecl;
  nk_draw_list_setup: procedure(p1: Pnk_draw_list; const p2: Pnk_convert_config; cmds: Pnk_buffer; vertices: Pnk_buffer; elements: Pnk_buffer; line_aa: nk_anti_aliasing; shape_aa: nk_anti_aliasing); cdecl;
  nk__draw_list_begin: function(const p1: Pnk_draw_list; const p2: Pnk_buffer): Pnk_draw_command; cdecl;
  nk__draw_list_next: function(const p1: Pnk_draw_command; const p2: Pnk_buffer; const p3: Pnk_draw_list): Pnk_draw_command; cdecl;
  nk__draw_list_end: function(const p1: Pnk_draw_list; const p2: Pnk_buffer): Pnk_draw_command; cdecl;
  nk_draw_list_path_clear: procedure(p1: Pnk_draw_list); cdecl;
  nk_draw_list_path_line_to: procedure(p1: Pnk_draw_list; pos: nk_vec2); cdecl;
  nk_draw_list_path_arc_to_fast: procedure(p1: Pnk_draw_list; center: nk_vec2; radius: Single; a_min: Integer; a_max: Integer); cdecl;
  nk_draw_list_path_arc_to: procedure(p1: Pnk_draw_list; center: nk_vec2; radius: Single; a_min: Single; a_max: Single; segments: Cardinal); cdecl;
  nk_draw_list_path_rect_to: procedure(p1: Pnk_draw_list; a: nk_vec2; b: nk_vec2; rounding: Single); cdecl;
  nk_draw_list_path_curve_to: procedure(p1: Pnk_draw_list; p2: nk_vec2; p3: nk_vec2; p4: nk_vec2; num_segments: Cardinal); cdecl;
  nk_draw_list_path_fill: procedure(p1: Pnk_draw_list; p2: nk_color); cdecl;
  nk_draw_list_path_stroke: procedure(p1: Pnk_draw_list; p2: nk_color; closed: nk_draw_list_stroke; thickness: Single); cdecl;
  nk_draw_list_stroke_line: procedure(p1: Pnk_draw_list; a: nk_vec2; b: nk_vec2; p4: nk_color; thickness: Single); cdecl;
  nk_draw_list_stroke_rect: procedure(p1: Pnk_draw_list; rect: nk_rect; p3: nk_color; rounding: Single; thickness: Single); cdecl;
  nk_draw_list_stroke_triangle: procedure(p1: Pnk_draw_list; a: nk_vec2; b: nk_vec2; c: nk_vec2; p5: nk_color; thickness: Single); cdecl;
  nk_draw_list_stroke_circle: procedure(p1: Pnk_draw_list; center: nk_vec2; radius: Single; p4: nk_color; segs: Cardinal; thickness: Single); cdecl;
  nk_draw_list_stroke_curve: procedure(draw_list: Pnk_draw_list; p0: nk_vec2; cp0: nk_vec2; cp1: nk_vec2; p1: nk_vec2; p6: nk_color; segments: Cardinal; thickness: Single); cdecl;
  nk_draw_list_stroke_poly_line: procedure(p1: Pnk_draw_list; const pnts: Pnk_vec2; const cnt: Cardinal; p4: nk_color; p5: nk_draw_list_stroke; thickness: Single; p7: nk_anti_aliasing); cdecl;
  nk_draw_list_fill_rect: procedure(p1: Pnk_draw_list; rect: nk_rect; p3: nk_color; rounding: Single); cdecl;
  nk_draw_list_fill_rect_multi_color: procedure(p1: Pnk_draw_list; rect: nk_rect; left: nk_color; top: nk_color; right: nk_color; bottom: nk_color); cdecl;
  nk_draw_list_fill_triangle: procedure(p1: Pnk_draw_list; a: nk_vec2; b: nk_vec2; c: nk_vec2; p5: nk_color); cdecl;
  nk_draw_list_fill_circle: procedure(p1: Pnk_draw_list; center: nk_vec2; radius: Single; col: nk_color; segs: Cardinal); cdecl;
  nk_draw_list_fill_poly_convex: procedure(p1: Pnk_draw_list; const points: Pnk_vec2; const count: Cardinal; p4: nk_color; p5: nk_anti_aliasing); cdecl;
  nk_draw_list_add_image: procedure(p1: Pnk_draw_list; texture: nk_image; rect: nk_rect; p4: nk_color); cdecl;
  nk_draw_list_add_text: procedure(p1: Pnk_draw_list; const p2: Pnk_user_font; p3: nk_rect; const text: PUTF8Char; len: Integer; font_height: Single; p7: nk_color); cdecl;
  nk_style_item_color_rtn: function(p1: nk_color): nk_style_item; cdecl;
  nk_style_item_image_rtn: function(img: nk_image): nk_style_item; cdecl;
  nk_style_item_nine_slice_rtn: function(slice: nk_nine_slice): nk_style_item; cdecl;
  nk_style_item_hide: function(): nk_style_item; cdecl;
  nk_sdl_init: function(win: PSDL_Window; renderer: PSDL_Renderer): Pnk_context; cdecl;
  nk_sdl_font_stash_begin: procedure(atlas: PPnk_font_atlas); cdecl;
  nk_sdl_font_stash_end: procedure(); cdecl;
  nk_sdl_handle_event: function(evt: PSDL_Event): Integer; cdecl;
  nk_sdl_render: procedure(p1: nk_anti_aliasing); cdecl;
  nk_sdl_shutdown: procedure(); cdecl;
  ma_version: procedure(pMajor: Pma_uint32; pMinor: Pma_uint32; pRevision: Pma_uint32); cdecl;
  ma_version_string: function(): PUTF8Char; cdecl;
  ma_log_callback_init: function(onLog: ma_log_callback_proc; pUserData: Pointer): ma_log_callback; cdecl;
  ma_log_init: function(const pAllocationCallbacks: Pma_allocation_callbacks; pLog: Pma_log): ma_result; cdecl;
  ma_log_uninit: procedure(pLog: Pma_log); cdecl;
  ma_log_register_callback: function(pLog: Pma_log; callback: ma_log_callback): ma_result; cdecl;
  ma_log_unregister_callback: function(pLog: Pma_log; callback: ma_log_callback): ma_result; cdecl;
  ma_log_post: function(pLog: Pma_log; level: ma_uint32; const pMessage: PUTF8Char): ma_result; cdecl;
  ma_log_postv: function(pLog: Pma_log; level: ma_uint32; const pFormat: PUTF8Char; args: Pointer): ma_result; cdecl;
  ma_log_postf: function(pLog: Pma_log; level: ma_uint32; const pFormat: PUTF8Char): ma_result varargs; cdecl;
  ma_biquad_config_init: function(format: ma_format; channels: ma_uint32; b0: Double; b1: Double; b2: Double; a0: Double; a1: Double; a2: Double): ma_biquad_config; cdecl;
  ma_biquad_get_heap_size: function(const pConfig: Pma_biquad_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_biquad_init_preallocated: function(const pConfig: Pma_biquad_config; pHeap: Pointer; pBQ: Pma_biquad): ma_result; cdecl;
  ma_biquad_init: function(const pConfig: Pma_biquad_config; const pAllocationCallbacks: Pma_allocation_callbacks; pBQ: Pma_biquad): ma_result; cdecl;
  ma_biquad_uninit: procedure(pBQ: Pma_biquad; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_biquad_reinit: function(const pConfig: Pma_biquad_config; pBQ: Pma_biquad): ma_result; cdecl;
  ma_biquad_clear_cache: function(pBQ: Pma_biquad): ma_result; cdecl;
  ma_biquad_process_pcm_frames: function(pBQ: Pma_biquad; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_biquad_get_latency: function(const pBQ: Pma_biquad): ma_uint32; cdecl;
  ma_lpf1_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double): ma_lpf1_config; cdecl;
  ma_lpf2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; q: Double): ma_lpf2_config; cdecl;
  ma_lpf1_get_heap_size: function(const pConfig: Pma_lpf1_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_lpf1_init_preallocated: function(const pConfig: Pma_lpf1_config; pHeap: Pointer; pLPF: Pma_lpf1): ma_result; cdecl;
  ma_lpf1_init: function(const pConfig: Pma_lpf1_config; const pAllocationCallbacks: Pma_allocation_callbacks; pLPF: Pma_lpf1): ma_result; cdecl;
  ma_lpf1_uninit: procedure(pLPF: Pma_lpf1; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_lpf1_reinit: function(const pConfig: Pma_lpf1_config; pLPF: Pma_lpf1): ma_result; cdecl;
  ma_lpf1_clear_cache: function(pLPF: Pma_lpf1): ma_result; cdecl;
  ma_lpf1_process_pcm_frames: function(pLPF: Pma_lpf1; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_lpf1_get_latency: function(const pLPF: Pma_lpf1): ma_uint32; cdecl;
  ma_lpf2_get_heap_size: function(const pConfig: Pma_lpf2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_lpf2_init_preallocated: function(const pConfig: Pma_lpf2_config; pHeap: Pointer; pHPF: Pma_lpf2): ma_result; cdecl;
  ma_lpf2_init: function(const pConfig: Pma_lpf2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pLPF: Pma_lpf2): ma_result; cdecl;
  ma_lpf2_uninit: procedure(pLPF: Pma_lpf2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_lpf2_reinit: function(const pConfig: Pma_lpf2_config; pLPF: Pma_lpf2): ma_result; cdecl;
  ma_lpf2_clear_cache: function(pLPF: Pma_lpf2): ma_result; cdecl;
  ma_lpf2_process_pcm_frames: function(pLPF: Pma_lpf2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_lpf2_get_latency: function(const pLPF: Pma_lpf2): ma_uint32; cdecl;
  ma_lpf_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_lpf_config; cdecl;
  ma_lpf_get_heap_size: function(const pConfig: Pma_lpf_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_lpf_init_preallocated: function(const pConfig: Pma_lpf_config; pHeap: Pointer; pLPF: Pma_lpf): ma_result; cdecl;
  ma_lpf_init: function(const pConfig: Pma_lpf_config; const pAllocationCallbacks: Pma_allocation_callbacks; pLPF: Pma_lpf): ma_result; cdecl;
  ma_lpf_uninit: procedure(pLPF: Pma_lpf; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_lpf_reinit: function(const pConfig: Pma_lpf_config; pLPF: Pma_lpf): ma_result; cdecl;
  ma_lpf_clear_cache: function(pLPF: Pma_lpf): ma_result; cdecl;
  ma_lpf_process_pcm_frames: function(pLPF: Pma_lpf; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_lpf_get_latency: function(const pLPF: Pma_lpf): ma_uint32; cdecl;
  ma_hpf1_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double): ma_hpf1_config; cdecl;
  ma_hpf2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; q: Double): ma_hpf2_config; cdecl;
  ma_hpf1_get_heap_size: function(const pConfig: Pma_hpf1_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_hpf1_init_preallocated: function(const pConfig: Pma_hpf1_config; pHeap: Pointer; pLPF: Pma_hpf1): ma_result; cdecl;
  ma_hpf1_init: function(const pConfig: Pma_hpf1_config; const pAllocationCallbacks: Pma_allocation_callbacks; pHPF: Pma_hpf1): ma_result; cdecl;
  ma_hpf1_uninit: procedure(pHPF: Pma_hpf1; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hpf1_reinit: function(const pConfig: Pma_hpf1_config; pHPF: Pma_hpf1): ma_result; cdecl;
  ma_hpf1_process_pcm_frames: function(pHPF: Pma_hpf1; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_hpf1_get_latency: function(const pHPF: Pma_hpf1): ma_uint32; cdecl;
  ma_hpf2_get_heap_size: function(const pConfig: Pma_hpf2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_hpf2_init_preallocated: function(const pConfig: Pma_hpf2_config; pHeap: Pointer; pHPF: Pma_hpf2): ma_result; cdecl;
  ma_hpf2_init: function(const pConfig: Pma_hpf2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pHPF: Pma_hpf2): ma_result; cdecl;
  ma_hpf2_uninit: procedure(pHPF: Pma_hpf2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hpf2_reinit: function(const pConfig: Pma_hpf2_config; pHPF: Pma_hpf2): ma_result; cdecl;
  ma_hpf2_process_pcm_frames: function(pHPF: Pma_hpf2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_hpf2_get_latency: function(const pHPF: Pma_hpf2): ma_uint32; cdecl;
  ma_hpf_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_hpf_config; cdecl;
  ma_hpf_get_heap_size: function(const pConfig: Pma_hpf_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_hpf_init_preallocated: function(const pConfig: Pma_hpf_config; pHeap: Pointer; pLPF: Pma_hpf): ma_result; cdecl;
  ma_hpf_init: function(const pConfig: Pma_hpf_config; const pAllocationCallbacks: Pma_allocation_callbacks; pHPF: Pma_hpf): ma_result; cdecl;
  ma_hpf_uninit: procedure(pHPF: Pma_hpf; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hpf_reinit: function(const pConfig: Pma_hpf_config; pHPF: Pma_hpf): ma_result; cdecl;
  ma_hpf_process_pcm_frames: function(pHPF: Pma_hpf; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_hpf_get_latency: function(const pHPF: Pma_hpf): ma_uint32; cdecl;
  ma_bpf2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; q: Double): ma_bpf2_config; cdecl;
  ma_bpf2_get_heap_size: function(const pConfig: Pma_bpf2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_bpf2_init_preallocated: function(const pConfig: Pma_bpf2_config; pHeap: Pointer; pBPF: Pma_bpf2): ma_result; cdecl;
  ma_bpf2_init: function(const pConfig: Pma_bpf2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pBPF: Pma_bpf2): ma_result; cdecl;
  ma_bpf2_uninit: procedure(pBPF: Pma_bpf2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_bpf2_reinit: function(const pConfig: Pma_bpf2_config; pBPF: Pma_bpf2): ma_result; cdecl;
  ma_bpf2_process_pcm_frames: function(pBPF: Pma_bpf2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_bpf2_get_latency: function(const pBPF: Pma_bpf2): ma_uint32; cdecl;
  ma_bpf_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_bpf_config; cdecl;
  ma_bpf_get_heap_size: function(const pConfig: Pma_bpf_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_bpf_init_preallocated: function(const pConfig: Pma_bpf_config; pHeap: Pointer; pBPF: Pma_bpf): ma_result; cdecl;
  ma_bpf_init: function(const pConfig: Pma_bpf_config; const pAllocationCallbacks: Pma_allocation_callbacks; pBPF: Pma_bpf): ma_result; cdecl;
  ma_bpf_uninit: procedure(pBPF: Pma_bpf; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_bpf_reinit: function(const pConfig: Pma_bpf_config; pBPF: Pma_bpf): ma_result; cdecl;
  ma_bpf_process_pcm_frames: function(pBPF: Pma_bpf; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_bpf_get_latency: function(const pBPF: Pma_bpf): ma_uint32; cdecl;
  ma_notch2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; q: Double; frequency: Double): ma_notch2_config; cdecl;
  ma_notch2_get_heap_size: function(const pConfig: Pma_notch2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_notch2_init_preallocated: function(const pConfig: Pma_notch2_config; pHeap: Pointer; pFilter: Pma_notch2): ma_result; cdecl;
  ma_notch2_init: function(const pConfig: Pma_notch2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pFilter: Pma_notch2): ma_result; cdecl;
  ma_notch2_uninit: procedure(pFilter: Pma_notch2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_notch2_reinit: function(const pConfig: Pma_notch2_config; pFilter: Pma_notch2): ma_result; cdecl;
  ma_notch2_process_pcm_frames: function(pFilter: Pma_notch2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_notch2_get_latency: function(const pFilter: Pma_notch2): ma_uint32; cdecl;
  ma_peak2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; q: Double; frequency: Double): ma_peak2_config; cdecl;
  ma_peak2_get_heap_size: function(const pConfig: Pma_peak2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_peak2_init_preallocated: function(const pConfig: Pma_peak2_config; pHeap: Pointer; pFilter: Pma_peak2): ma_result; cdecl;
  ma_peak2_init: function(const pConfig: Pma_peak2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pFilter: Pma_peak2): ma_result; cdecl;
  ma_peak2_uninit: procedure(pFilter: Pma_peak2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_peak2_reinit: function(const pConfig: Pma_peak2_config; pFilter: Pma_peak2): ma_result; cdecl;
  ma_peak2_process_pcm_frames: function(pFilter: Pma_peak2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_peak2_get_latency: function(const pFilter: Pma_peak2): ma_uint32; cdecl;
  ma_loshelf2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; shelfSlope: Double; frequency: Double): ma_loshelf2_config; cdecl;
  ma_loshelf2_get_heap_size: function(const pConfig: Pma_loshelf2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_loshelf2_init_preallocated: function(const pConfig: Pma_loshelf2_config; pHeap: Pointer; pFilter: Pma_loshelf2): ma_result; cdecl;
  ma_loshelf2_init: function(const pConfig: Pma_loshelf2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pFilter: Pma_loshelf2): ma_result; cdecl;
  ma_loshelf2_uninit: procedure(pFilter: Pma_loshelf2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_loshelf2_reinit: function(const pConfig: Pma_loshelf2_config; pFilter: Pma_loshelf2): ma_result; cdecl;
  ma_loshelf2_process_pcm_frames: function(pFilter: Pma_loshelf2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_loshelf2_get_latency: function(const pFilter: Pma_loshelf2): ma_uint32; cdecl;
  ma_hishelf2_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; shelfSlope: Double; frequency: Double): ma_hishelf2_config; cdecl;
  ma_hishelf2_get_heap_size: function(const pConfig: Pma_hishelf2_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_hishelf2_init_preallocated: function(const pConfig: Pma_hishelf2_config; pHeap: Pointer; pFilter: Pma_hishelf2): ma_result; cdecl;
  ma_hishelf2_init: function(const pConfig: Pma_hishelf2_config; const pAllocationCallbacks: Pma_allocation_callbacks; pFilter: Pma_hishelf2): ma_result; cdecl;
  ma_hishelf2_uninit: procedure(pFilter: Pma_hishelf2; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hishelf2_reinit: function(const pConfig: Pma_hishelf2_config; pFilter: Pma_hishelf2): ma_result; cdecl;
  ma_hishelf2_process_pcm_frames: function(pFilter: Pma_hishelf2; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_hishelf2_get_latency: function(const pFilter: Pma_hishelf2): ma_uint32; cdecl;
  ma_delay_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; delayInFrames: ma_uint32; decay: Single): ma_delay_config; cdecl;
  ma_delay_init: function(const pConfig: Pma_delay_config; const pAllocationCallbacks: Pma_allocation_callbacks; pDelay: Pma_delay): ma_result; cdecl;
  ma_delay_uninit: procedure(pDelay: Pma_delay; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_delay_process_pcm_frames: function(pDelay: Pma_delay; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint32): ma_result; cdecl;
  ma_delay_set_wet: procedure(pDelay: Pma_delay; value: Single); cdecl;
  ma_delay_get_wet: function(const pDelay: Pma_delay): Single; cdecl;
  ma_delay_set_dry: procedure(pDelay: Pma_delay; value: Single); cdecl;
  ma_delay_get_dry: function(const pDelay: Pma_delay): Single; cdecl;
  ma_delay_set_decay: procedure(pDelay: Pma_delay; value: Single); cdecl;
  ma_delay_get_decay: function(const pDelay: Pma_delay): Single; cdecl;
  ma_gainer_config_init: function(channels: ma_uint32; smoothTimeInFrames: ma_uint32): ma_gainer_config; cdecl;
  ma_gainer_get_heap_size: function(const pConfig: Pma_gainer_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_gainer_init_preallocated: function(const pConfig: Pma_gainer_config; pHeap: Pointer; pGainer: Pma_gainer): ma_result; cdecl;
  ma_gainer_init: function(const pConfig: Pma_gainer_config; const pAllocationCallbacks: Pma_allocation_callbacks; pGainer: Pma_gainer): ma_result; cdecl;
  ma_gainer_uninit: procedure(pGainer: Pma_gainer; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_gainer_process_pcm_frames: function(pGainer: Pma_gainer; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_gainer_set_gain: function(pGainer: Pma_gainer; newGain: Single): ma_result; cdecl;
  ma_gainer_set_gains: function(pGainer: Pma_gainer; pNewGains: PSingle): ma_result; cdecl;
  ma_panner_config_init: function(format: ma_format; channels: ma_uint32): ma_panner_config; cdecl;
  ma_panner_init: function(const pConfig: Pma_panner_config; pPanner: Pma_panner): ma_result; cdecl;
  ma_panner_process_pcm_frames: function(pPanner: Pma_panner; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_panner_set_mode: procedure(pPanner: Pma_panner; mode: ma_pan_mode); cdecl;
  ma_panner_get_mode: function(const pPanner: Pma_panner): ma_pan_mode; cdecl;
  ma_panner_set_pan: procedure(pPanner: Pma_panner; pan: Single); cdecl;
  ma_panner_get_pan: function(const pPanner: Pma_panner): Single; cdecl;
  ma_fader_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32): ma_fader_config; cdecl;
  ma_fader_init: function(const pConfig: Pma_fader_config; pFader: Pma_fader): ma_result; cdecl;
  ma_fader_process_pcm_frames: function(pFader: Pma_fader; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_fader_get_data_format: procedure(const pFader: Pma_fader; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32); cdecl;
  ma_fader_set_fade: procedure(pFader: Pma_fader; volumeBeg: Single; volumeEnd: Single; lengthInFrames: ma_uint64); cdecl;
  ma_fader_get_current_volume: function(pFader: Pma_fader): Single; cdecl;
  ma_spatializer_listener_config_init: function(channelsOut: ma_uint32): ma_spatializer_listener_config; cdecl;
  ma_spatializer_listener_get_heap_size: function(const pConfig: Pma_spatializer_listener_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_spatializer_listener_init_preallocated: function(const pConfig: Pma_spatializer_listener_config; pHeap: Pointer; pListener: Pma_spatializer_listener): ma_result; cdecl;
  ma_spatializer_listener_init: function(const pConfig: Pma_spatializer_listener_config; const pAllocationCallbacks: Pma_allocation_callbacks; pListener: Pma_spatializer_listener): ma_result; cdecl;
  ma_spatializer_listener_uninit: procedure(pListener: Pma_spatializer_listener; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_spatializer_listener_get_channel_map: function(pListener: Pma_spatializer_listener): Pma_channel; cdecl;
  ma_spatializer_listener_set_cone: procedure(pListener: Pma_spatializer_listener; innerAngleInRadians: Single; outerAngleInRadians: Single; outerGain: Single); cdecl;
  ma_spatializer_listener_get_cone: procedure(const pListener: Pma_spatializer_listener; pInnerAngleInRadians: PSingle; pOuterAngleInRadians: PSingle; pOuterGain: PSingle); cdecl;
  ma_spatializer_listener_set_position: procedure(pListener: Pma_spatializer_listener; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_listener_get_position: function(const pListener: Pma_spatializer_listener): ma_vec3f; cdecl;
  ma_spatializer_listener_set_direction: procedure(pListener: Pma_spatializer_listener; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_listener_get_direction: function(const pListener: Pma_spatializer_listener): ma_vec3f; cdecl;
  ma_spatializer_listener_set_velocity: procedure(pListener: Pma_spatializer_listener; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_listener_get_velocity: function(const pListener: Pma_spatializer_listener): ma_vec3f; cdecl;
  ma_spatializer_listener_set_speed_of_sound: procedure(pListener: Pma_spatializer_listener; speedOfSound: Single); cdecl;
  ma_spatializer_listener_get_speed_of_sound: function(const pListener: Pma_spatializer_listener): Single; cdecl;
  ma_spatializer_listener_set_world_up: procedure(pListener: Pma_spatializer_listener; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_listener_get_world_up: function(const pListener: Pma_spatializer_listener): ma_vec3f; cdecl;
  ma_spatializer_listener_set_enabled: procedure(pListener: Pma_spatializer_listener; isEnabled: ma_bool32); cdecl;
  ma_spatializer_listener_is_enabled: function(const pListener: Pma_spatializer_listener): ma_bool32; cdecl;
  ma_spatializer_config_init: function(channelsIn: ma_uint32; channelsOut: ma_uint32): ma_spatializer_config; cdecl;
  ma_spatializer_get_heap_size: function(const pConfig: Pma_spatializer_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_spatializer_init_preallocated: function(const pConfig: Pma_spatializer_config; pHeap: Pointer; pSpatializer: Pma_spatializer): ma_result; cdecl;
  ma_spatializer_init: function(const pConfig: Pma_spatializer_config; const pAllocationCallbacks: Pma_allocation_callbacks; pSpatializer: Pma_spatializer): ma_result; cdecl;
  ma_spatializer_uninit: procedure(pSpatializer: Pma_spatializer; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_spatializer_process_pcm_frames: function(pSpatializer: Pma_spatializer; pListener: Pma_spatializer_listener; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_spatializer_get_input_channels: function(const pSpatializer: Pma_spatializer): ma_uint32; cdecl;
  ma_spatializer_get_output_channels: function(const pSpatializer: Pma_spatializer): ma_uint32; cdecl;
  ma_spatializer_set_attenuation_model: procedure(pSpatializer: Pma_spatializer; attenuationModel: ma_attenuation_model); cdecl;
  ma_spatializer_get_attenuation_model: function(const pSpatializer: Pma_spatializer): ma_attenuation_model; cdecl;
  ma_spatializer_set_positioning: procedure(pSpatializer: Pma_spatializer; positioning: ma_positioning); cdecl;
  ma_spatializer_get_positioning: function(const pSpatializer: Pma_spatializer): ma_positioning; cdecl;
  ma_spatializer_set_rolloff: procedure(pSpatializer: Pma_spatializer; rolloff: Single); cdecl;
  ma_spatializer_get_rolloff: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_min_gain: procedure(pSpatializer: Pma_spatializer; minGain: Single); cdecl;
  ma_spatializer_get_min_gain: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_max_gain: procedure(pSpatializer: Pma_spatializer; maxGain: Single); cdecl;
  ma_spatializer_get_max_gain: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_min_distance: procedure(pSpatializer: Pma_spatializer; minDistance: Single); cdecl;
  ma_spatializer_get_min_distance: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_max_distance: procedure(pSpatializer: Pma_spatializer; maxDistance: Single); cdecl;
  ma_spatializer_get_max_distance: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_cone: procedure(pSpatializer: Pma_spatializer; innerAngleInRadians: Single; outerAngleInRadians: Single; outerGain: Single); cdecl;
  ma_spatializer_get_cone: procedure(const pSpatializer: Pma_spatializer; pInnerAngleInRadians: PSingle; pOuterAngleInRadians: PSingle; pOuterGain: PSingle); cdecl;
  ma_spatializer_set_doppler_factor: procedure(pSpatializer: Pma_spatializer; dopplerFactor: Single); cdecl;
  ma_spatializer_get_doppler_factor: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_directional_attenuation_factor: procedure(pSpatializer: Pma_spatializer; directionalAttenuationFactor: Single); cdecl;
  ma_spatializer_get_directional_attenuation_factor: function(const pSpatializer: Pma_spatializer): Single; cdecl;
  ma_spatializer_set_position: procedure(pSpatializer: Pma_spatializer; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_get_position: function(const pSpatializer: Pma_spatializer): ma_vec3f; cdecl;
  ma_spatializer_set_direction: procedure(pSpatializer: Pma_spatializer; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_get_direction: function(const pSpatializer: Pma_spatializer): ma_vec3f; cdecl;
  ma_spatializer_set_velocity: procedure(pSpatializer: Pma_spatializer; x: Single; y: Single; z: Single); cdecl;
  ma_spatializer_get_velocity: function(const pSpatializer: Pma_spatializer): ma_vec3f; cdecl;
  ma_spatializer_get_relative_position_and_direction: procedure(const pSpatializer: Pma_spatializer; const pListener: Pma_spatializer_listener; pRelativePos: Pma_vec3f; pRelativeDir: Pma_vec3f); cdecl;
  ma_linear_resampler_config_init: function(format: ma_format; channels: ma_uint32; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_linear_resampler_config; cdecl;
  ma_linear_resampler_get_heap_size: function(const pConfig: Pma_linear_resampler_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_linear_resampler_init_preallocated: function(const pConfig: Pma_linear_resampler_config; pHeap: Pointer; pResampler: Pma_linear_resampler): ma_result; cdecl;
  ma_linear_resampler_init: function(const pConfig: Pma_linear_resampler_config; const pAllocationCallbacks: Pma_allocation_callbacks; pResampler: Pma_linear_resampler): ma_result; cdecl;
  ma_linear_resampler_uninit: procedure(pResampler: Pma_linear_resampler; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_linear_resampler_process_pcm_frames: function(pResampler: Pma_linear_resampler; const pFramesIn: Pointer; pFrameCountIn: Pma_uint64; pFramesOut: Pointer; pFrameCountOut: Pma_uint64): ma_result; cdecl;
  ma_linear_resampler_set_rate: function(pResampler: Pma_linear_resampler; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_result; cdecl;
  ma_linear_resampler_set_rate_ratio: function(pResampler: Pma_linear_resampler; ratioInOut: Single): ma_result; cdecl;
  ma_linear_resampler_get_input_latency: function(const pResampler: Pma_linear_resampler): ma_uint64; cdecl;
  ma_linear_resampler_get_output_latency: function(const pResampler: Pma_linear_resampler): ma_uint64; cdecl;
  ma_linear_resampler_get_required_input_frame_count: function(const pResampler: Pma_linear_resampler; outputFrameCount: ma_uint64; pInputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_linear_resampler_get_expected_output_frame_count: function(const pResampler: Pma_linear_resampler; inputFrameCount: ma_uint64; pOutputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_linear_resampler_reset: function(pResampler: Pma_linear_resampler): ma_result; cdecl;
  ma_resampler_config_init: function(format: ma_format; channels: ma_uint32; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32; algorithm: ma_resample_algorithm): ma_resampler_config; cdecl;
  ma_resampler_get_heap_size: function(const pConfig: Pma_resampler_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_resampler_init_preallocated: function(const pConfig: Pma_resampler_config; pHeap: Pointer; pResampler: Pma_resampler): ma_result; cdecl;
  ma_resampler_init: function(const pConfig: Pma_resampler_config; const pAllocationCallbacks: Pma_allocation_callbacks; pResampler: Pma_resampler): ma_result; cdecl;
  ma_resampler_uninit: procedure(pResampler: Pma_resampler; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_resampler_process_pcm_frames: function(pResampler: Pma_resampler; const pFramesIn: Pointer; pFrameCountIn: Pma_uint64; pFramesOut: Pointer; pFrameCountOut: Pma_uint64): ma_result; cdecl;
  ma_resampler_set_rate: function(pResampler: Pma_resampler; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_result; cdecl;
  ma_resampler_set_rate_ratio: function(pResampler: Pma_resampler; ratio: Single): ma_result; cdecl;
  ma_resampler_get_input_latency: function(const pResampler: Pma_resampler): ma_uint64; cdecl;
  ma_resampler_get_output_latency: function(const pResampler: Pma_resampler): ma_uint64; cdecl;
  ma_resampler_get_required_input_frame_count: function(const pResampler: Pma_resampler; outputFrameCount: ma_uint64; pInputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_resampler_get_expected_output_frame_count: function(const pResampler: Pma_resampler; inputFrameCount: ma_uint64; pOutputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_resampler_reset: function(pResampler: Pma_resampler): ma_result; cdecl;
  ma_channel_converter_config_init: function(format: ma_format; channelsIn: ma_uint32; const pChannelMapIn: Pma_channel; channelsOut: ma_uint32; const pChannelMapOut: Pma_channel; mixingMode: ma_channel_mix_mode): ma_channel_converter_config; cdecl;
  ma_channel_converter_get_heap_size: function(const pConfig: Pma_channel_converter_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_channel_converter_init_preallocated: function(const pConfig: Pma_channel_converter_config; pHeap: Pointer; pConverter: Pma_channel_converter): ma_result; cdecl;
  ma_channel_converter_init: function(const pConfig: Pma_channel_converter_config; const pAllocationCallbacks: Pma_allocation_callbacks; pConverter: Pma_channel_converter): ma_result; cdecl;
  ma_channel_converter_uninit: procedure(pConverter: Pma_channel_converter; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_channel_converter_process_pcm_frames: function(pConverter: Pma_channel_converter; pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64): ma_result; cdecl;
  ma_channel_converter_get_input_channel_map: function(const pConverter: Pma_channel_converter; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_channel_converter_get_output_channel_map: function(const pConverter: Pma_channel_converter; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_data_converter_config_init_default: function(): ma_data_converter_config; cdecl;
  ma_data_converter_config_init: function(formatIn: ma_format; formatOut: ma_format; channelsIn: ma_uint32; channelsOut: ma_uint32; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_data_converter_config; cdecl;
  ma_data_converter_get_heap_size: function(const pConfig: Pma_data_converter_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_data_converter_init_preallocated: function(const pConfig: Pma_data_converter_config; pHeap: Pointer; pConverter: Pma_data_converter): ma_result; cdecl;
  ma_data_converter_init: function(const pConfig: Pma_data_converter_config; const pAllocationCallbacks: Pma_allocation_callbacks; pConverter: Pma_data_converter): ma_result; cdecl;
  ma_data_converter_uninit: procedure(pConverter: Pma_data_converter; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_data_converter_process_pcm_frames: function(pConverter: Pma_data_converter; const pFramesIn: Pointer; pFrameCountIn: Pma_uint64; pFramesOut: Pointer; pFrameCountOut: Pma_uint64): ma_result; cdecl;
  ma_data_converter_set_rate: function(pConverter: Pma_data_converter; sampleRateIn: ma_uint32; sampleRateOut: ma_uint32): ma_result; cdecl;
  ma_data_converter_set_rate_ratio: function(pConverter: Pma_data_converter; ratioInOut: Single): ma_result; cdecl;
  ma_data_converter_get_input_latency: function(const pConverter: Pma_data_converter): ma_uint64; cdecl;
  ma_data_converter_get_output_latency: function(const pConverter: Pma_data_converter): ma_uint64; cdecl;
  ma_data_converter_get_required_input_frame_count: function(const pConverter: Pma_data_converter; outputFrameCount: ma_uint64; pInputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_data_converter_get_expected_output_frame_count: function(const pConverter: Pma_data_converter; inputFrameCount: ma_uint64; pOutputFrameCount: Pma_uint64): ma_result; cdecl;
  ma_data_converter_get_input_channel_map: function(const pConverter: Pma_data_converter; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_data_converter_get_output_channel_map: function(const pConverter: Pma_data_converter; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_data_converter_reset: function(pConverter: Pma_data_converter): ma_result; cdecl;
  ma_pcm_u8_to_s16: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_u8_to_s24: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_u8_to_s32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_u8_to_f32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s16_to_u8: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s16_to_s24: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s16_to_s32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s16_to_f32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s24_to_u8: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s24_to_s16: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s24_to_s32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s24_to_f32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s32_to_u8: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s32_to_s16: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s32_to_s24: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_s32_to_f32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_f32_to_u8: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_f32_to_s16: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_f32_to_s24: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_f32_to_s32: procedure(pOut: Pointer; const pIn: Pointer; count: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_pcm_convert: procedure(pOut: Pointer; formatOut: ma_format; const pIn: Pointer; formatIn: ma_format; sampleCount: ma_uint64; ditherMode: ma_dither_mode); cdecl;
  ma_convert_pcm_frames_format: procedure(pOut: Pointer; formatOut: ma_format; const pIn: Pointer; formatIn: ma_format; frameCount: ma_uint64; channels: ma_uint32; ditherMode: ma_dither_mode); cdecl;
  ma_deinterleave_pcm_frames: procedure(format: ma_format; channels: ma_uint32; frameCount: ma_uint64; const pInterleavedPCMFrames: Pointer; ppDeinterleavedPCMFrames: PPointer); cdecl;
  ma_interleave_pcm_frames: procedure(format: ma_format; channels: ma_uint32; frameCount: ma_uint64; ppDeinterleavedPCMFrames: PPointer; pInterleavedPCMFrames: Pointer); cdecl;
  ma_channel_map_get_channel: function(const pChannelMap: Pma_channel; channelCount: ma_uint32; channelIndex: ma_uint32): ma_channel; cdecl;
  ma_channel_map_init_blank: procedure(pChannelMap: Pma_channel; channels: ma_uint32); cdecl;
  ma_channel_map_init_standard: procedure(standardChannelMap: ma_standard_channel_map; pChannelMap: Pma_channel; channelMapCap: NativeUInt; channels: ma_uint32); cdecl;
  ma_channel_map_copy: procedure(pOut: Pma_channel; const pIn: Pma_channel; channels: ma_uint32); cdecl;
  ma_channel_map_copy_or_default: procedure(pOut: Pma_channel; channelMapCapOut: NativeUInt; const pIn: Pma_channel; channels: ma_uint32); cdecl;
  ma_channel_map_is_valid: function(const pChannelMap: Pma_channel; channels: ma_uint32): ma_bool32; cdecl;
  ma_channel_map_is_equal: function(const pChannelMapA: Pma_channel; const pChannelMapB: Pma_channel; channels: ma_uint32): ma_bool32; cdecl;
  ma_channel_map_is_blank: function(const pChannelMap: Pma_channel; channels: ma_uint32): ma_bool32; cdecl;
  ma_channel_map_contains_channel_position: function(channels: ma_uint32; const pChannelMap: Pma_channel; channelPosition: ma_channel): ma_bool32; cdecl;
  ma_channel_map_find_channel_position: function(channels: ma_uint32; const pChannelMap: Pma_channel; channelPosition: ma_channel; pChannelIndex: Pma_uint32): ma_bool32; cdecl;
  ma_channel_map_to_string: function(const pChannelMap: Pma_channel; channels: ma_uint32; pBufferOut: PUTF8Char; bufferCap: NativeUInt): NativeUInt; cdecl;
  ma_channel_position_to_string: function(channel: ma_channel): PUTF8Char; cdecl;
  ma_convert_frames: function(pOut: Pointer; frameCountOut: ma_uint64; formatOut: ma_format; channelsOut: ma_uint32; sampleRateOut: ma_uint32; const pIn: Pointer; frameCountIn: ma_uint64; formatIn: ma_format; channelsIn: ma_uint32; sampleRateIn: ma_uint32): ma_uint64; cdecl;
  ma_convert_frames_ex: function(pOut: Pointer; frameCountOut: ma_uint64; const pIn: Pointer; frameCountIn: ma_uint64; const pConfig: Pma_data_converter_config): ma_uint64; cdecl;
  ma_rb_init_ex: function(subbufferSizeInBytes: NativeUInt; subbufferCount: NativeUInt; subbufferStrideInBytes: NativeUInt; pOptionalPreallocatedBuffer: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks; pRB: Pma_rb): ma_result; cdecl;
  ma_rb_init: function(bufferSizeInBytes: NativeUInt; pOptionalPreallocatedBuffer: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks; pRB: Pma_rb): ma_result; cdecl;
  ma_rb_uninit: procedure(pRB: Pma_rb); cdecl;
  ma_rb_reset: procedure(pRB: Pma_rb); cdecl;
  ma_rb_acquire_read: function(pRB: Pma_rb; pSizeInBytes: PNativeUInt; ppBufferOut: PPointer): ma_result; cdecl;
  ma_rb_commit_read: function(pRB: Pma_rb; sizeInBytes: NativeUInt): ma_result; cdecl;
  ma_rb_acquire_write: function(pRB: Pma_rb; pSizeInBytes: PNativeUInt; ppBufferOut: PPointer): ma_result; cdecl;
  ma_rb_commit_write: function(pRB: Pma_rb; sizeInBytes: NativeUInt): ma_result; cdecl;
  ma_rb_seek_read: function(pRB: Pma_rb; offsetInBytes: NativeUInt): ma_result; cdecl;
  ma_rb_seek_write: function(pRB: Pma_rb; offsetInBytes: NativeUInt): ma_result; cdecl;
  ma_rb_pointer_distance: function(pRB: Pma_rb): ma_int32; cdecl;
  ma_rb_available_read: function(pRB: Pma_rb): ma_uint32; cdecl;
  ma_rb_available_write: function(pRB: Pma_rb): ma_uint32; cdecl;
  ma_rb_get_subbuffer_size: function(pRB: Pma_rb): NativeUInt; cdecl;
  ma_rb_get_subbuffer_stride: function(pRB: Pma_rb): NativeUInt; cdecl;
  ma_rb_get_subbuffer_offset: function(pRB: Pma_rb; subbufferIndex: NativeUInt): NativeUInt; cdecl;
  ma_rb_get_subbuffer_ptr: function(pRB: Pma_rb; subbufferIndex: NativeUInt; pBuffer: Pointer): Pointer; cdecl;
  ma_pcm_rb_init_ex: function(format: ma_format; channels: ma_uint32; subbufferSizeInFrames: ma_uint32; subbufferCount: ma_uint32; subbufferStrideInFrames: ma_uint32; pOptionalPreallocatedBuffer: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks; pRB: Pma_pcm_rb): ma_result; cdecl;
  ma_pcm_rb_init: function(format: ma_format; channels: ma_uint32; bufferSizeInFrames: ma_uint32; pOptionalPreallocatedBuffer: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks; pRB: Pma_pcm_rb): ma_result; cdecl;
  ma_pcm_rb_uninit: procedure(pRB: Pma_pcm_rb); cdecl;
  ma_pcm_rb_reset: procedure(pRB: Pma_pcm_rb); cdecl;
  ma_pcm_rb_acquire_read: function(pRB: Pma_pcm_rb; pSizeInFrames: Pma_uint32; ppBufferOut: PPointer): ma_result; cdecl;
  ma_pcm_rb_commit_read: function(pRB: Pma_pcm_rb; sizeInFrames: ma_uint32): ma_result; cdecl;
  ma_pcm_rb_acquire_write: function(pRB: Pma_pcm_rb; pSizeInFrames: Pma_uint32; ppBufferOut: PPointer): ma_result; cdecl;
  ma_pcm_rb_commit_write: function(pRB: Pma_pcm_rb; sizeInFrames: ma_uint32): ma_result; cdecl;
  ma_pcm_rb_seek_read: function(pRB: Pma_pcm_rb; offsetInFrames: ma_uint32): ma_result; cdecl;
  ma_pcm_rb_seek_write: function(pRB: Pma_pcm_rb; offsetInFrames: ma_uint32): ma_result; cdecl;
  ma_pcm_rb_pointer_distance: function(pRB: Pma_pcm_rb): ma_int32; cdecl;
  ma_pcm_rb_available_read: function(pRB: Pma_pcm_rb): ma_uint32; cdecl;
  ma_pcm_rb_available_write: function(pRB: Pma_pcm_rb): ma_uint32; cdecl;
  ma_pcm_rb_get_subbuffer_size: function(pRB: Pma_pcm_rb): ma_uint32; cdecl;
  ma_pcm_rb_get_subbuffer_stride: function(pRB: Pma_pcm_rb): ma_uint32; cdecl;
  ma_pcm_rb_get_subbuffer_offset: function(pRB: Pma_pcm_rb; subbufferIndex: ma_uint32): ma_uint32; cdecl;
  ma_pcm_rb_get_subbuffer_ptr: function(pRB: Pma_pcm_rb; subbufferIndex: ma_uint32; pBuffer: Pointer): Pointer; cdecl;
  ma_duplex_rb_init: function(captureFormat: ma_format; captureChannels: ma_uint32; sampleRate: ma_uint32; captureInternalSampleRate: ma_uint32; captureInternalPeriodSizeInFrames: ma_uint32; const pAllocationCallbacks: Pma_allocation_callbacks; pRB: Pma_duplex_rb): ma_result; cdecl;
  ma_duplex_rb_uninit: function(pRB: Pma_duplex_rb): ma_result; cdecl;
  ma_result_description: function(result: ma_result): PUTF8Char; cdecl;
  ma_malloc: function(sz: NativeUInt; const pAllocationCallbacks: Pma_allocation_callbacks): Pointer; cdecl;
  ma_calloc: function(sz: NativeUInt; const pAllocationCallbacks: Pma_allocation_callbacks): Pointer; cdecl;
  ma_realloc: function(p: Pointer; sz: NativeUInt; const pAllocationCallbacks: Pma_allocation_callbacks): Pointer; cdecl;
  ma_free: procedure(p: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_aligned_malloc: function(sz: NativeUInt; alignment: NativeUInt; const pAllocationCallbacks: Pma_allocation_callbacks): Pointer; cdecl;
  ma_aligned_free: procedure(p: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_get_format_name: function(format: ma_format): PUTF8Char; cdecl;
  ma_blend_f32: procedure(pOut: PSingle; pInA: PSingle; pInB: PSingle; factor: Single; channels: ma_uint32); cdecl;
  ma_get_bytes_per_sample: function(format: ma_format): ma_uint32; cdecl;
  ma_log_level_to_string: function(logLevel: ma_uint32): PUTF8Char; cdecl;
  ma_spinlock_lock: function(pSpinlock: Pma_spinlock): ma_result; cdecl;
  ma_spinlock_lock_noyield: function(pSpinlock: Pma_spinlock): ma_result; cdecl;
  ma_spinlock_unlock: function(pSpinlock: Pma_spinlock): ma_result; cdecl;
  ma_mutex_init: function(pMutex: Pma_mutex): ma_result; cdecl;
  ma_mutex_uninit: procedure(pMutex: Pma_mutex); cdecl;
  ma_mutex_lock: procedure(pMutex: Pma_mutex); cdecl;
  ma_mutex_unlock: procedure(pMutex: Pma_mutex); cdecl;
  ma_event_init: function(pEvent: Pma_event): ma_result; cdecl;
  ma_event_uninit: procedure(pEvent: Pma_event); cdecl;
  ma_event_wait: function(pEvent: Pma_event): ma_result; cdecl;
  ma_event_signal: function(pEvent: Pma_event): ma_result; cdecl;
  ma_fence_init: function(pFence: Pma_fence): ma_result; cdecl;
  ma_fence_uninit: procedure(pFence: Pma_fence); cdecl;
  ma_fence_acquire: function(pFence: Pma_fence): ma_result; cdecl;
  ma_fence_release: function(pFence: Pma_fence): ma_result; cdecl;
  ma_fence_wait: function(pFence: Pma_fence): ma_result; cdecl;
  ma_async_notification_signal: function(pNotification: Pma_async_notification): ma_result; cdecl;
  ma_async_notification_poll_init: function(pNotificationPoll: Pma_async_notification_poll): ma_result; cdecl;
  ma_async_notification_poll_is_signalled: function(const pNotificationPoll: Pma_async_notification_poll): ma_bool32; cdecl;
  ma_async_notification_event_init: function(pNotificationEvent: Pma_async_notification_event): ma_result; cdecl;
  ma_async_notification_event_uninit: function(pNotificationEvent: Pma_async_notification_event): ma_result; cdecl;
  ma_async_notification_event_wait: function(pNotificationEvent: Pma_async_notification_event): ma_result; cdecl;
  ma_async_notification_event_signal: function(pNotificationEvent: Pma_async_notification_event): ma_result; cdecl;
  ma_slot_allocator_config_init: function(capacity: ma_uint32): ma_slot_allocator_config; cdecl;
  ma_slot_allocator_get_heap_size: function(const pConfig: Pma_slot_allocator_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_slot_allocator_init_preallocated: function(const pConfig: Pma_slot_allocator_config; pHeap: Pointer; pAllocator: Pma_slot_allocator): ma_result; cdecl;
  ma_slot_allocator_init: function(const pConfig: Pma_slot_allocator_config; const pAllocationCallbacks: Pma_allocation_callbacks; pAllocator: Pma_slot_allocator): ma_result; cdecl;
  ma_slot_allocator_uninit: procedure(pAllocator: Pma_slot_allocator; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_slot_allocator_alloc: function(pAllocator: Pma_slot_allocator; pSlot: Pma_uint64): ma_result; cdecl;
  ma_slot_allocator_free: function(pAllocator: Pma_slot_allocator; slot: ma_uint64): ma_result; cdecl;
  ma_job_init: function(code: ma_uint16): ma_job; cdecl;
  ma_job_process: function(pJob: Pma_job): ma_result; cdecl;
  ma_job_queue_config_init: function(flags: ma_uint32; capacity: ma_uint32): ma_job_queue_config; cdecl;
  ma_job_queue_get_heap_size: function(const pConfig: Pma_job_queue_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_job_queue_init_preallocated: function(const pConfig: Pma_job_queue_config; pHeap: Pointer; pQueue: Pma_job_queue): ma_result; cdecl;
  ma_job_queue_init: function(const pConfig: Pma_job_queue_config; const pAllocationCallbacks: Pma_allocation_callbacks; pQueue: Pma_job_queue): ma_result; cdecl;
  ma_job_queue_uninit: procedure(pQueue: Pma_job_queue; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_job_queue_post: function(pQueue: Pma_job_queue; const pJob: Pma_job): ma_result; cdecl;
  ma_job_queue_next: function(pQueue: Pma_job_queue; pJob: Pma_job): ma_result; cdecl;
  ma_device_job_thread_config_init: function(): ma_device_job_thread_config; cdecl;
  ma_device_job_thread_init: function(const pConfig: Pma_device_job_thread_config; const pAllocationCallbacks: Pma_allocation_callbacks; pJobThread: Pma_device_job_thread): ma_result; cdecl;
  ma_device_job_thread_uninit: procedure(pJobThread: Pma_device_job_thread; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_device_job_thread_post: function(pJobThread: Pma_device_job_thread; const pJob: Pma_job): ma_result; cdecl;
  ma_device_job_thread_next: function(pJobThread: Pma_device_job_thread; pJob: Pma_job): ma_result; cdecl;
  ma_context_config_init: function(): ma_context_config; cdecl;
  ma_context_init: function(backends: Pma_backend; backendCount: ma_uint32; const pConfig: Pma_context_config; pContext: Pma_context): ma_result; cdecl;
  ma_context_uninit: function(pContext: Pma_context): ma_result; cdecl;
  ma_context_sizeof: function(): NativeUInt; cdecl;
  ma_context_get_log: function(pContext: Pma_context): Pma_log; cdecl;
  ma_context_enumerate_devices: function(pContext: Pma_context; callback: ma_enum_devices_callback_proc; pUserData: Pointer): ma_result; cdecl;
  ma_context_get_devices: function(pContext: Pma_context; ppPlaybackDeviceInfos: PPma_device_info; pPlaybackDeviceCount: Pma_uint32; ppCaptureDeviceInfos: PPma_device_info; pCaptureDeviceCount: Pma_uint32): ma_result; cdecl;
  ma_context_get_device_info: function(pContext: Pma_context; deviceType: ma_device_type; const pDeviceID: Pma_device_id; pDeviceInfo: Pma_device_info): ma_result; cdecl;
  ma_context_is_loopback_supported: function(pContext: Pma_context): ma_bool32; cdecl;
  ma_device_config_init: function(deviceType: ma_device_type): ma_device_config; cdecl;
  ma_device_init: function(pContext: Pma_context; const pConfig: Pma_device_config; pDevice: Pma_device): ma_result; cdecl;
  ma_device_init_ex: function(backends: Pma_backend; backendCount: ma_uint32; const pContextConfig: Pma_context_config; const pConfig: Pma_device_config; pDevice: Pma_device): ma_result; cdecl;
  ma_device_uninit: procedure(pDevice: Pma_device); cdecl;
  ma_device_get_context: function(pDevice: Pma_device): Pma_context; cdecl;
  ma_device_get_log: function(pDevice: Pma_device): Pma_log; cdecl;
  ma_device_get_info: function(pDevice: Pma_device; type_: ma_device_type; pDeviceInfo: Pma_device_info): ma_result; cdecl;
  ma_device_get_name: function(pDevice: Pma_device; type_: ma_device_type; pName: PUTF8Char; nameCap: NativeUInt; pLengthNotIncludingNullTerminator: PNativeUInt): ma_result; cdecl;
  ma_device_start: function(pDevice: Pma_device): ma_result; cdecl;
  ma_device_stop: function(pDevice: Pma_device): ma_result; cdecl;
  ma_device_is_started: function(const pDevice: Pma_device): ma_bool32; cdecl;
  ma_device_get_state: function(const pDevice: Pma_device): ma_device_state; cdecl;
  ma_device_post_init: function(pDevice: Pma_device; deviceType: ma_device_type; const pPlaybackDescriptor: Pma_device_descriptor; const pCaptureDescriptor: Pma_device_descriptor): ma_result; cdecl;
  ma_device_set_master_volume: function(pDevice: Pma_device; volume: Single): ma_result; cdecl;
  ma_device_get_master_volume: function(pDevice: Pma_device; pVolume: PSingle): ma_result; cdecl;
  ma_device_set_master_volume_db: function(pDevice: Pma_device; gainDB: Single): ma_result; cdecl;
  ma_device_get_master_volume_db: function(pDevice: Pma_device; pGainDB: PSingle): ma_result; cdecl;
  ma_device_handle_backend_data_callback: function(pDevice: Pma_device; pOutput: Pointer; const pInput: Pointer; frameCount: ma_uint32): ma_result; cdecl;
  ma_calculate_buffer_size_in_frames_from_descriptor: function(const pDescriptor: Pma_device_descriptor; nativeSampleRate: ma_uint32; performanceProfile: ma_performance_profile): ma_uint32; cdecl;
  ma_get_backend_name: function(backend: ma_backend): PUTF8Char; cdecl;
  ma_is_backend_enabled: function(backend: ma_backend): ma_bool32; cdecl;
  ma_get_enabled_backends: function(pBackends: Pma_backend; backendCap: NativeUInt; pBackendCount: PNativeUInt): ma_result; cdecl;
  ma_is_loopback_supported: function(backend: ma_backend): ma_bool32; cdecl;
  ma_calculate_buffer_size_in_milliseconds_from_frames: function(bufferSizeInFrames: ma_uint32; sampleRate: ma_uint32): ma_uint32; cdecl;
  ma_calculate_buffer_size_in_frames_from_milliseconds: function(bufferSizeInMilliseconds: ma_uint32; sampleRate: ma_uint32): ma_uint32; cdecl;
  ma_copy_pcm_frames: procedure(dst: Pointer; const src: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32); cdecl;
  ma_silence_pcm_frames: procedure(p: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32); cdecl;
  ma_offset_pcm_frames_ptr: function(p: Pointer; offsetInFrames: ma_uint64; format: ma_format; channels: ma_uint32): Pointer; cdecl;
  ma_offset_pcm_frames_const_ptr: function(const p: Pointer; offsetInFrames: ma_uint64; format: ma_format; channels: ma_uint32): Pointer; cdecl;
  ma_clip_samples_u8: procedure(pDst: Pma_uint8; const pSrc: Pma_int16; count: ma_uint64); cdecl;
  ma_clip_samples_s16: procedure(pDst: Pma_int16; const pSrc: Pma_int32; count: ma_uint64); cdecl;
  ma_clip_samples_s24: procedure(pDst: Pma_uint8; const pSrc: Pma_int64; count: ma_uint64); cdecl;
  ma_clip_samples_s32: procedure(pDst: Pma_int32; const pSrc: Pma_int64; count: ma_uint64); cdecl;
  ma_clip_samples_f32: procedure(pDst: PSingle; const pSrc: PSingle; count: ma_uint64); cdecl;
  ma_clip_pcm_frames: procedure(pDst: Pointer; const pSrc: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32); cdecl;
  ma_copy_and_apply_volume_factor_u8: procedure(pSamplesOut: Pma_uint8; const pSamplesIn: Pma_uint8; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_s16: procedure(pSamplesOut: Pma_int16; const pSamplesIn: Pma_int16; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_s24: procedure(pSamplesOut: Pointer; const pSamplesIn: Pointer; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_s32: procedure(pSamplesOut: Pma_int32; const pSamplesIn: Pma_int32; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_f32: procedure(pSamplesOut: PSingle; const pSamplesIn: PSingle; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_apply_volume_factor_u8: procedure(pSamples: Pma_uint8; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_apply_volume_factor_s16: procedure(pSamples: Pma_int16; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_apply_volume_factor_s24: procedure(pSamples: Pointer; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_apply_volume_factor_s32: procedure(pSamples: Pma_int32; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_apply_volume_factor_f32: procedure(pSamples: PSingle; sampleCount: ma_uint64; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames_u8: procedure(pFramesOut: Pma_uint8; const pFramesIn: Pma_uint8; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames_s16: procedure(pFramesOut: Pma_int16; const pFramesIn: Pma_int16; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames_s24: procedure(pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames_s32: procedure(pFramesOut: Pma_int32; const pFramesIn: Pma_int32; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames_f32: procedure(pFramesOut: PSingle; const pFramesIn: PSingle; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_pcm_frames: procedure(pFramesOut: Pointer; const pFramesIn: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames_u8: procedure(pFrames: Pma_uint8; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames_s16: procedure(pFrames: Pma_int16; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames_s24: procedure(pFrames: Pointer; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames_s32: procedure(pFrames: Pma_int32; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames_f32: procedure(pFrames: PSingle; frameCount: ma_uint64; channels: ma_uint32; factor: Single); cdecl;
  ma_apply_volume_factor_pcm_frames: procedure(pFrames: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32; factor: Single); cdecl;
  ma_copy_and_apply_volume_factor_per_channel_f32: procedure(pFramesOut: PSingle; const pFramesIn: PSingle; frameCount: ma_uint64; channels: ma_uint32; pChannelGains: PSingle); cdecl;
  ma_copy_and_apply_volume_and_clip_samples_u8: procedure(pDst: Pma_uint8; const pSrc: Pma_int16; count: ma_uint64; volume: Single); cdecl;
  ma_copy_and_apply_volume_and_clip_samples_s16: procedure(pDst: Pma_int16; const pSrc: Pma_int32; count: ma_uint64; volume: Single); cdecl;
  ma_copy_and_apply_volume_and_clip_samples_s24: procedure(pDst: Pma_uint8; const pSrc: Pma_int64; count: ma_uint64; volume: Single); cdecl;
  ma_copy_and_apply_volume_and_clip_samples_s32: procedure(pDst: Pma_int32; const pSrc: Pma_int64; count: ma_uint64; volume: Single); cdecl;
  ma_copy_and_apply_volume_and_clip_samples_f32: procedure(pDst: PSingle; const pSrc: PSingle; count: ma_uint64; volume: Single); cdecl;
  ma_copy_and_apply_volume_and_clip_pcm_frames: procedure(pDst: Pointer; const pSrc: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32; volume: Single); cdecl;
  ma_volume_linear_to_db: function(factor: Single): Single; cdecl;
  ma_volume_db_to_linear: function(gain: Single): Single; cdecl;
  ma_data_source_config_init: function(): ma_data_source_config; cdecl;
  ma_data_source_init: function(const pConfig: Pma_data_source_config; pDataSource: Pma_data_source): ma_result; cdecl;
  ma_data_source_uninit: procedure(pDataSource: Pma_data_source); cdecl;
  ma_data_source_read_pcm_frames: function(pDataSource: Pma_data_source; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_data_source_seek_pcm_frames: function(pDataSource: Pma_data_source; frameCount: ma_uint64; pFramesSeeked: Pma_uint64): ma_result; cdecl;
  ma_data_source_seek_to_pcm_frame: function(pDataSource: Pma_data_source; frameIndex: ma_uint64): ma_result; cdecl;
  ma_data_source_get_data_format: function(pDataSource: Pma_data_source; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_data_source_get_cursor_in_pcm_frames: function(pDataSource: Pma_data_source; pCursor: Pma_uint64): ma_result; cdecl;
  ma_data_source_get_length_in_pcm_frames: function(pDataSource: Pma_data_source; pLength: Pma_uint64): ma_result; cdecl;
  ma_data_source_get_cursor_in_seconds: function(pDataSource: Pma_data_source; pCursor: PSingle): ma_result; cdecl;
  ma_data_source_get_length_in_seconds: function(pDataSource: Pma_data_source; pLength: PSingle): ma_result; cdecl;
  ma_data_source_set_looping: function(pDataSource: Pma_data_source; isLooping: ma_bool32): ma_result; cdecl;
  ma_data_source_is_looping: function(const pDataSource: Pma_data_source): ma_bool32; cdecl;
  ma_data_source_set_range_in_pcm_frames: function(pDataSource: Pma_data_source; rangeBegInFrames: ma_uint64; rangeEndInFrames: ma_uint64): ma_result; cdecl;
  ma_data_source_get_range_in_pcm_frames: procedure(const pDataSource: Pma_data_source; pRangeBegInFrames: Pma_uint64; pRangeEndInFrames: Pma_uint64); cdecl;
  ma_data_source_set_loop_point_in_pcm_frames: function(pDataSource: Pma_data_source; loopBegInFrames: ma_uint64; loopEndInFrames: ma_uint64): ma_result; cdecl;
  ma_data_source_get_loop_point_in_pcm_frames: procedure(const pDataSource: Pma_data_source; pLoopBegInFrames: Pma_uint64; pLoopEndInFrames: Pma_uint64); cdecl;
  ma_data_source_set_current: function(pDataSource: Pma_data_source; pCurrentDataSource: Pma_data_source): ma_result; cdecl;
  ma_data_source_get_current: function(const pDataSource: Pma_data_source): Pma_data_source; cdecl;
  ma_data_source_set_next: function(pDataSource: Pma_data_source; pNextDataSource: Pma_data_source): ma_result; cdecl;
  ma_data_source_get_next: function(const pDataSource: Pma_data_source): Pma_data_source; cdecl;
  ma_data_source_set_next_callback: function(pDataSource: Pma_data_source; onGetNext: ma_data_source_get_next_proc): ma_result; cdecl;
  ma_data_source_get_next_callback: function(const pDataSource: Pma_data_source): ma_data_source_get_next_proc; cdecl;
  ma_audio_buffer_ref_init: function(format: ma_format; channels: ma_uint32; const pData: Pointer; sizeInFrames: ma_uint64; pAudioBufferRef: Pma_audio_buffer_ref): ma_result; cdecl;
  ma_audio_buffer_ref_uninit: procedure(pAudioBufferRef: Pma_audio_buffer_ref); cdecl;
  ma_audio_buffer_ref_set_data: function(pAudioBufferRef: Pma_audio_buffer_ref; const pData: Pointer; sizeInFrames: ma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_read_pcm_frames: function(pAudioBufferRef: Pma_audio_buffer_ref; pFramesOut: Pointer; frameCount: ma_uint64; loop: ma_bool32): ma_uint64; cdecl;
  ma_audio_buffer_ref_seek_to_pcm_frame: function(pAudioBufferRef: Pma_audio_buffer_ref; frameIndex: ma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_map: function(pAudioBufferRef: Pma_audio_buffer_ref; ppFramesOut: PPointer; pFrameCount: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_unmap: function(pAudioBufferRef: Pma_audio_buffer_ref; frameCount: ma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_at_end: function(const pAudioBufferRef: Pma_audio_buffer_ref): ma_bool32; cdecl;
  ma_audio_buffer_ref_get_cursor_in_pcm_frames: function(const pAudioBufferRef: Pma_audio_buffer_ref; pCursor: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_get_length_in_pcm_frames: function(const pAudioBufferRef: Pma_audio_buffer_ref; pLength: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_ref_get_available_frames: function(const pAudioBufferRef: Pma_audio_buffer_ref; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_config_init: function(format: ma_format; channels: ma_uint32; sizeInFrames: ma_uint64; const pData: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks): ma_audio_buffer_config; cdecl;
  ma_audio_buffer_init: function(const pConfig: Pma_audio_buffer_config; pAudioBuffer: Pma_audio_buffer): ma_result; cdecl;
  ma_audio_buffer_init_copy: function(const pConfig: Pma_audio_buffer_config; pAudioBuffer: Pma_audio_buffer): ma_result; cdecl;
  ma_audio_buffer_alloc_and_init: function(const pConfig: Pma_audio_buffer_config; ppAudioBuffer: PPma_audio_buffer): ma_result; cdecl;
  ma_audio_buffer_uninit: procedure(pAudioBuffer: Pma_audio_buffer); cdecl;
  ma_audio_buffer_uninit_and_free: procedure(pAudioBuffer: Pma_audio_buffer); cdecl;
  ma_audio_buffer_read_pcm_frames: function(pAudioBuffer: Pma_audio_buffer; pFramesOut: Pointer; frameCount: ma_uint64; loop: ma_bool32): ma_uint64; cdecl;
  ma_audio_buffer_seek_to_pcm_frame: function(pAudioBuffer: Pma_audio_buffer; frameIndex: ma_uint64): ma_result; cdecl;
  ma_audio_buffer_map: function(pAudioBuffer: Pma_audio_buffer; ppFramesOut: PPointer; pFrameCount: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_unmap: function(pAudioBuffer: Pma_audio_buffer; frameCount: ma_uint64): ma_result; cdecl;
  ma_audio_buffer_at_end: function(const pAudioBuffer: Pma_audio_buffer): ma_bool32; cdecl;
  ma_audio_buffer_get_cursor_in_pcm_frames: function(const pAudioBuffer: Pma_audio_buffer; pCursor: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_get_length_in_pcm_frames: function(const pAudioBuffer: Pma_audio_buffer; pLength: Pma_uint64): ma_result; cdecl;
  ma_audio_buffer_get_available_frames: function(const pAudioBuffer: Pma_audio_buffer; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_paged_audio_buffer_data_init: function(format: ma_format; channels: ma_uint32; pData: Pma_paged_audio_buffer_data): ma_result; cdecl;
  ma_paged_audio_buffer_data_uninit: procedure(pData: Pma_paged_audio_buffer_data; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_paged_audio_buffer_data_get_head: function(pData: Pma_paged_audio_buffer_data): Pma_paged_audio_buffer_page; cdecl;
  ma_paged_audio_buffer_data_get_tail: function(pData: Pma_paged_audio_buffer_data): Pma_paged_audio_buffer_page; cdecl;
  ma_paged_audio_buffer_data_get_length_in_pcm_frames: function(pData: Pma_paged_audio_buffer_data; pLength: Pma_uint64): ma_result; cdecl;
  ma_paged_audio_buffer_data_allocate_page: function(pData: Pma_paged_audio_buffer_data; pageSizeInFrames: ma_uint64; const pInitialData: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks; ppPage: PPma_paged_audio_buffer_page): ma_result; cdecl;
  ma_paged_audio_buffer_data_free_page: function(pData: Pma_paged_audio_buffer_data; pPage: Pma_paged_audio_buffer_page; const pAllocationCallbacks: Pma_allocation_callbacks): ma_result; cdecl;
  ma_paged_audio_buffer_data_append_page: function(pData: Pma_paged_audio_buffer_data; pPage: Pma_paged_audio_buffer_page): ma_result; cdecl;
  ma_paged_audio_buffer_data_allocate_and_append_page: function(pData: Pma_paged_audio_buffer_data; pageSizeInFrames: ma_uint32; const pInitialData: Pointer; const pAllocationCallbacks: Pma_allocation_callbacks): ma_result; cdecl;
  ma_paged_audio_buffer_config_init: function(pData: Pma_paged_audio_buffer_data): ma_paged_audio_buffer_config; cdecl;
  ma_paged_audio_buffer_init: function(const pConfig: Pma_paged_audio_buffer_config; pPagedAudioBuffer: Pma_paged_audio_buffer): ma_result; cdecl;
  ma_paged_audio_buffer_uninit: procedure(pPagedAudioBuffer: Pma_paged_audio_buffer); cdecl;
  ma_paged_audio_buffer_read_pcm_frames: function(pPagedAudioBuffer: Pma_paged_audio_buffer; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_paged_audio_buffer_seek_to_pcm_frame: function(pPagedAudioBuffer: Pma_paged_audio_buffer; frameIndex: ma_uint64): ma_result; cdecl;
  ma_paged_audio_buffer_get_cursor_in_pcm_frames: function(pPagedAudioBuffer: Pma_paged_audio_buffer; pCursor: Pma_uint64): ma_result; cdecl;
  ma_paged_audio_buffer_get_length_in_pcm_frames: function(pPagedAudioBuffer: Pma_paged_audio_buffer; pLength: Pma_uint64): ma_result; cdecl;
  ma_vfs_open: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; openMode: ma_uint32; pFile: Pma_vfs_file): ma_result; cdecl;
  ma_vfs_open_w: function(pVFS: Pma_vfs; const pFilePath: PWideChar; openMode: ma_uint32; pFile: Pma_vfs_file): ma_result; cdecl;
  ma_vfs_close: function(pVFS: Pma_vfs; file_: ma_vfs_file): ma_result; cdecl;
  ma_vfs_read: function(pVFS: Pma_vfs; file_: ma_vfs_file; pDst: Pointer; sizeInBytes: NativeUInt; pBytesRead: PNativeUInt): ma_result; cdecl;
  ma_vfs_write: function(pVFS: Pma_vfs; file_: ma_vfs_file; const pSrc: Pointer; sizeInBytes: NativeUInt; pBytesWritten: PNativeUInt): ma_result; cdecl;
  ma_vfs_seek: function(pVFS: Pma_vfs; file_: ma_vfs_file; offset: ma_int64; origin: ma_seek_origin): ma_result; cdecl;
  ma_vfs_tell: function(pVFS: Pma_vfs; file_: ma_vfs_file; pCursor: Pma_int64): ma_result; cdecl;
  ma_vfs_info: function(pVFS: Pma_vfs; file_: ma_vfs_file; pInfo: Pma_file_info): ma_result; cdecl;
  ma_vfs_open_and_read_file: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; ppData: PPointer; pSize: PNativeUInt; const pAllocationCallbacks: Pma_allocation_callbacks): ma_result; cdecl;
  ma_default_vfs_init: function(pVFS: Pma_default_vfs; const pAllocationCallbacks: Pma_allocation_callbacks): ma_result; cdecl;
  ma_decoding_backend_config_init: function(preferredFormat: ma_format; seekPointCount: ma_uint32): ma_decoding_backend_config; cdecl;
  ma_decoder_config_init: function(outputFormat: ma_format; outputChannels: ma_uint32; outputSampleRate: ma_uint32): ma_decoder_config; cdecl;
  ma_decoder_config_init_default: function(): ma_decoder_config; cdecl;
  ma_decoder_init: function(onRead: ma_decoder_read_proc; onSeek: ma_decoder_seek_proc; pUserData: Pointer; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_init_memory: function(const pData: Pointer; dataSize: NativeUInt; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_init_vfs: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_init_vfs_w: function(pVFS: Pma_vfs; const pFilePath: PWideChar; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_init_file: function(const pFilePath: PUTF8Char; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_init_file_w: function(const pFilePath: PWideChar; const pConfig: Pma_decoder_config; pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_uninit: function(pDecoder: Pma_decoder): ma_result; cdecl;
  ma_decoder_read_pcm_frames: function(pDecoder: Pma_decoder; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_decoder_seek_to_pcm_frame: function(pDecoder: Pma_decoder; frameIndex: ma_uint64): ma_result; cdecl;
  ma_decoder_get_data_format: function(pDecoder: Pma_decoder; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_decoder_get_cursor_in_pcm_frames: function(pDecoder: Pma_decoder; pCursor: Pma_uint64): ma_result; cdecl;
  ma_decoder_get_length_in_pcm_frames: function(pDecoder: Pma_decoder; pLength: Pma_uint64): ma_result; cdecl;
  ma_decoder_get_available_frames: function(pDecoder: Pma_decoder; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_decode_from_vfs: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; pConfig: Pma_decoder_config; pFrameCountOut: Pma_uint64; ppPCMFramesOut: PPointer): ma_result; cdecl;
  ma_decode_file: function(const pFilePath: PUTF8Char; pConfig: Pma_decoder_config; pFrameCountOut: Pma_uint64; ppPCMFramesOut: PPointer): ma_result; cdecl;
  ma_decode_memory: function(const pData: Pointer; dataSize: NativeUInt; pConfig: Pma_decoder_config; pFrameCountOut: Pma_uint64; ppPCMFramesOut: PPointer): ma_result; cdecl;
  ma_encoder_config_init: function(encodingFormat: ma_encoding_format; format: ma_format; channels: ma_uint32; sampleRate: ma_uint32): ma_encoder_config; cdecl;
  ma_encoder_init: function(onWrite: ma_encoder_write_proc; onSeek: ma_encoder_seek_proc; pUserData: Pointer; const pConfig: Pma_encoder_config; pEncoder: Pma_encoder): ma_result; cdecl;
  ma_encoder_init_vfs: function(pVFS: Pma_vfs; const pFilePath: PUTF8Char; const pConfig: Pma_encoder_config; pEncoder: Pma_encoder): ma_result; cdecl;
  ma_encoder_init_vfs_w: function(pVFS: Pma_vfs; const pFilePath: PWideChar; const pConfig: Pma_encoder_config; pEncoder: Pma_encoder): ma_result; cdecl;
  ma_encoder_init_file: function(const pFilePath: PUTF8Char; const pConfig: Pma_encoder_config; pEncoder: Pma_encoder): ma_result; cdecl;
  ma_encoder_init_file_w: function(const pFilePath: PWideChar; const pConfig: Pma_encoder_config; pEncoder: Pma_encoder): ma_result; cdecl;
  ma_encoder_uninit: procedure(pEncoder: Pma_encoder); cdecl;
  ma_encoder_write_pcm_frames: function(pEncoder: Pma_encoder; const pFramesIn: Pointer; frameCount: ma_uint64; pFramesWritten: Pma_uint64): ma_result; cdecl;
  ma_waveform_config_init: function(format: ma_format; channels: ma_uint32; sampleRate: ma_uint32; type_: ma_waveform_type; amplitude: Double; frequency: Double): ma_waveform_config; cdecl;
  ma_waveform_init: function(const pConfig: Pma_waveform_config; pWaveform: Pma_waveform): ma_result; cdecl;
  ma_waveform_uninit: procedure(pWaveform: Pma_waveform); cdecl;
  ma_waveform_read_pcm_frames: function(pWaveform: Pma_waveform; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_waveform_seek_to_pcm_frame: function(pWaveform: Pma_waveform; frameIndex: ma_uint64): ma_result; cdecl;
  ma_waveform_set_amplitude: function(pWaveform: Pma_waveform; amplitude: Double): ma_result; cdecl;
  ma_waveform_set_frequency: function(pWaveform: Pma_waveform; frequency: Double): ma_result; cdecl;
  ma_waveform_set_type: function(pWaveform: Pma_waveform; type_: ma_waveform_type): ma_result; cdecl;
  ma_waveform_set_sample_rate: function(pWaveform: Pma_waveform; sampleRate: ma_uint32): ma_result; cdecl;
  ma_noise_config_init: function(format: ma_format; channels: ma_uint32; type_: ma_noise_type; seed: ma_int32; amplitude: Double): ma_noise_config; cdecl;
  ma_noise_get_heap_size: function(const pConfig: Pma_noise_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_noise_init_preallocated: function(const pConfig: Pma_noise_config; pHeap: Pointer; pNoise: Pma_noise): ma_result; cdecl;
  ma_noise_init: function(const pConfig: Pma_noise_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNoise: Pma_noise): ma_result; cdecl;
  ma_noise_uninit: procedure(pNoise: Pma_noise; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_noise_read_pcm_frames: function(pNoise: Pma_noise; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_noise_set_amplitude: function(pNoise: Pma_noise; amplitude: Double): ma_result; cdecl;
  ma_noise_set_seed: function(pNoise: Pma_noise; seed: ma_int32): ma_result; cdecl;
  ma_noise_set_type: function(pNoise: Pma_noise; type_: ma_noise_type): ma_result; cdecl;
  ma_resource_manager_pipeline_notifications_init: function(): ma_resource_manager_pipeline_notifications; cdecl;
  ma_resource_manager_data_source_config_init: function(): ma_resource_manager_data_source_config; cdecl;
  ma_resource_manager_config_init: function(): ma_resource_manager_config; cdecl;
  ma_resource_manager_init: function(const pConfig: Pma_resource_manager_config; pResourceManager: Pma_resource_manager): ma_result; cdecl;
  ma_resource_manager_uninit: procedure(pResourceManager: Pma_resource_manager); cdecl;
  ma_resource_manager_get_log: function(pResourceManager: Pma_resource_manager): Pma_log; cdecl;
  ma_resource_manager_register_file: function(pResourceManager: Pma_resource_manager; const pFilePath: PUTF8Char; flags: ma_uint32): ma_result; cdecl;
  ma_resource_manager_register_file_w: function(pResourceManager: Pma_resource_manager; const pFilePath: PWideChar; flags: ma_uint32): ma_result; cdecl;
  ma_resource_manager_register_decoded_data: function(pResourceManager: Pma_resource_manager; const pName: PUTF8Char; const pData: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32; sampleRate: ma_uint32): ma_result; cdecl;
  ma_resource_manager_register_decoded_data_w: function(pResourceManager: Pma_resource_manager; const pName: PWideChar; const pData: Pointer; frameCount: ma_uint64; format: ma_format; channels: ma_uint32; sampleRate: ma_uint32): ma_result; cdecl;
  ma_resource_manager_register_encoded_data: function(pResourceManager: Pma_resource_manager; const pName: PUTF8Char; const pData: Pointer; sizeInBytes: NativeUInt): ma_result; cdecl;
  ma_resource_manager_register_encoded_data_w: function(pResourceManager: Pma_resource_manager; const pName: PWideChar; const pData: Pointer; sizeInBytes: NativeUInt): ma_result; cdecl;
  ma_resource_manager_unregister_file: function(pResourceManager: Pma_resource_manager; const pFilePath: PUTF8Char): ma_result; cdecl;
  ma_resource_manager_unregister_file_w: function(pResourceManager: Pma_resource_manager; const pFilePath: PWideChar): ma_result; cdecl;
  ma_resource_manager_unregister_data: function(pResourceManager: Pma_resource_manager; const pName: PUTF8Char): ma_result; cdecl;
  ma_resource_manager_unregister_data_w: function(pResourceManager: Pma_resource_manager; const pName: PWideChar): ma_result; cdecl;
  ma_resource_manager_data_buffer_init_ex: function(pResourceManager: Pma_resource_manager; const pConfig: Pma_resource_manager_data_source_config; pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_init: function(pResourceManager: Pma_resource_manager; const pFilePath: PUTF8Char; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_init_w: function(pResourceManager: Pma_resource_manager; const pFilePath: PWideChar; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_init_copy: function(pResourceManager: Pma_resource_manager; const pExistingDataBuffer: Pma_resource_manager_data_buffer; pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_uninit: function(pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_read_pcm_frames: function(pDataBuffer: Pma_resource_manager_data_buffer; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_buffer_seek_to_pcm_frame: function(pDataBuffer: Pma_resource_manager_data_buffer; frameIndex: ma_uint64): ma_result; cdecl;
  ma_resource_manager_data_buffer_get_data_format: function(pDataBuffer: Pma_resource_manager_data_buffer; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_resource_manager_data_buffer_get_cursor_in_pcm_frames: function(pDataBuffer: Pma_resource_manager_data_buffer; pCursor: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_buffer_get_length_in_pcm_frames: function(pDataBuffer: Pma_resource_manager_data_buffer; pLength: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_buffer_result: function(const pDataBuffer: Pma_resource_manager_data_buffer): ma_result; cdecl;
  ma_resource_manager_data_buffer_set_looping: function(pDataBuffer: Pma_resource_manager_data_buffer; isLooping: ma_bool32): ma_result; cdecl;
  ma_resource_manager_data_buffer_is_looping: function(const pDataBuffer: Pma_resource_manager_data_buffer): ma_bool32; cdecl;
  ma_resource_manager_data_buffer_get_available_frames: function(pDataBuffer: Pma_resource_manager_data_buffer; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_stream_init_ex: function(pResourceManager: Pma_resource_manager; const pConfig: Pma_resource_manager_data_source_config; pDataStream: Pma_resource_manager_data_stream): ma_result; cdecl;
  ma_resource_manager_data_stream_init: function(pResourceManager: Pma_resource_manager; const pFilePath: PUTF8Char; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataStream: Pma_resource_manager_data_stream): ma_result; cdecl;
  ma_resource_manager_data_stream_init_w: function(pResourceManager: Pma_resource_manager; const pFilePath: PWideChar; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataStream: Pma_resource_manager_data_stream): ma_result; cdecl;
  ma_resource_manager_data_stream_uninit: function(pDataStream: Pma_resource_manager_data_stream): ma_result; cdecl;
  ma_resource_manager_data_stream_read_pcm_frames: function(pDataStream: Pma_resource_manager_data_stream; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_stream_seek_to_pcm_frame: function(pDataStream: Pma_resource_manager_data_stream; frameIndex: ma_uint64): ma_result; cdecl;
  ma_resource_manager_data_stream_get_data_format: function(pDataStream: Pma_resource_manager_data_stream; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_resource_manager_data_stream_get_cursor_in_pcm_frames: function(pDataStream: Pma_resource_manager_data_stream; pCursor: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_stream_get_length_in_pcm_frames: function(pDataStream: Pma_resource_manager_data_stream; pLength: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_stream_result: function(const pDataStream: Pma_resource_manager_data_stream): ma_result; cdecl;
  ma_resource_manager_data_stream_set_looping: function(pDataStream: Pma_resource_manager_data_stream; isLooping: ma_bool32): ma_result; cdecl;
  ma_resource_manager_data_stream_is_looping: function(const pDataStream: Pma_resource_manager_data_stream): ma_bool32; cdecl;
  ma_resource_manager_data_stream_get_available_frames: function(pDataStream: Pma_resource_manager_data_stream; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_source_init_ex: function(pResourceManager: Pma_resource_manager; const pConfig: Pma_resource_manager_data_source_config; pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_init: function(pResourceManager: Pma_resource_manager; const pName: PUTF8Char; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_init_w: function(pResourceManager: Pma_resource_manager; const pName: PWideChar; flags: ma_uint32; const pNotifications: Pma_resource_manager_pipeline_notifications; pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_init_copy: function(pResourceManager: Pma_resource_manager; const pExistingDataSource: Pma_resource_manager_data_source; pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_uninit: function(pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_read_pcm_frames: function(pDataSource: Pma_resource_manager_data_source; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_source_seek_to_pcm_frame: function(pDataSource: Pma_resource_manager_data_source; frameIndex: ma_uint64): ma_result; cdecl;
  ma_resource_manager_data_source_get_data_format: function(pDataSource: Pma_resource_manager_data_source; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_resource_manager_data_source_get_cursor_in_pcm_frames: function(pDataSource: Pma_resource_manager_data_source; pCursor: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_source_get_length_in_pcm_frames: function(pDataSource: Pma_resource_manager_data_source; pLength: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_data_source_result: function(const pDataSource: Pma_resource_manager_data_source): ma_result; cdecl;
  ma_resource_manager_data_source_set_looping: function(pDataSource: Pma_resource_manager_data_source; isLooping: ma_bool32): ma_result; cdecl;
  ma_resource_manager_data_source_is_looping: function(const pDataSource: Pma_resource_manager_data_source): ma_bool32; cdecl;
  ma_resource_manager_data_source_get_available_frames: function(pDataSource: Pma_resource_manager_data_source; pAvailableFrames: Pma_uint64): ma_result; cdecl;
  ma_resource_manager_post_job: function(pResourceManager: Pma_resource_manager; const pJob: Pma_job): ma_result; cdecl;
  ma_resource_manager_post_job_quit: function(pResourceManager: Pma_resource_manager): ma_result; cdecl;
  ma_resource_manager_next_job: function(pResourceManager: Pma_resource_manager; pJob: Pma_job): ma_result; cdecl;
  ma_resource_manager_process_job: function(pResourceManager: Pma_resource_manager; pJob: Pma_job): ma_result; cdecl;
  ma_resource_manager_process_next_job: function(pResourceManager: Pma_resource_manager): ma_result; cdecl;
  ma_node_config_init: function(): ma_node_config; cdecl;
  ma_node_get_heap_size: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_node_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_node_init_preallocated: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_node_config; pHeap: Pointer; pNode: Pma_node): ma_result; cdecl;
  ma_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_node): ma_result; cdecl;
  ma_node_uninit: procedure(pNode: Pma_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_node_get_node_graph: function(const pNode: Pma_node): Pma_node_graph; cdecl;
  ma_node_get_input_bus_count: function(const pNode: Pma_node): ma_uint32; cdecl;
  ma_node_get_output_bus_count: function(const pNode: Pma_node): ma_uint32; cdecl;
  ma_node_get_input_channels: function(const pNode: Pma_node; inputBusIndex: ma_uint32): ma_uint32; cdecl;
  ma_node_get_output_channels: function(const pNode: Pma_node; outputBusIndex: ma_uint32): ma_uint32; cdecl;
  ma_node_attach_output_bus: function(pNode: Pma_node; outputBusIndex: ma_uint32; pOtherNode: Pma_node; otherNodeInputBusIndex: ma_uint32): ma_result; cdecl;
  ma_node_detach_output_bus: function(pNode: Pma_node; outputBusIndex: ma_uint32): ma_result; cdecl;
  ma_node_detach_all_output_buses: function(pNode: Pma_node): ma_result; cdecl;
  ma_node_set_output_bus_volume: function(pNode: Pma_node; outputBusIndex: ma_uint32; volume: Single): ma_result; cdecl;
  ma_node_get_output_bus_volume: function(const pNode: Pma_node; outputBusIndex: ma_uint32): Single; cdecl;
  ma_node_set_state: function(pNode: Pma_node; state: ma_node_state): ma_result; cdecl;
  ma_node_get_state: function(const pNode: Pma_node): ma_node_state; cdecl;
  ma_node_set_state_time: function(pNode: Pma_node; state: ma_node_state; globalTime: ma_uint64): ma_result; cdecl;
  ma_node_get_state_time: function(const pNode: Pma_node; state: ma_node_state): ma_uint64; cdecl;
  ma_node_get_state_by_time: function(const pNode: Pma_node; globalTime: ma_uint64): ma_node_state; cdecl;
  ma_node_get_state_by_time_range: function(const pNode: Pma_node; globalTimeBeg: ma_uint64; globalTimeEnd: ma_uint64): ma_node_state; cdecl;
  ma_node_get_time: function(const pNode: Pma_node): ma_uint64; cdecl;
  ma_node_set_time: function(pNode: Pma_node; localTime: ma_uint64): ma_result; cdecl;
  ma_node_graph_config_init: function(channels: ma_uint32): ma_node_graph_config; cdecl;
  ma_node_graph_init: function(const pConfig: Pma_node_graph_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNodeGraph: Pma_node_graph): ma_result; cdecl;
  ma_node_graph_uninit: procedure(pNodeGraph: Pma_node_graph; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_node_graph_get_endpoint: function(pNodeGraph: Pma_node_graph): Pma_node; cdecl;
  ma_node_graph_read_pcm_frames: function(pNodeGraph: Pma_node_graph; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_node_graph_get_channels: function(const pNodeGraph: Pma_node_graph): ma_uint32; cdecl;
  ma_node_graph_get_time: function(const pNodeGraph: Pma_node_graph): ma_uint64; cdecl;
  ma_node_graph_set_time: function(pNodeGraph: Pma_node_graph; globalTime: ma_uint64): ma_result; cdecl;
  ma_data_source_node_config_init: function(pDataSource: Pma_data_source): ma_data_source_node_config; cdecl;
  ma_data_source_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_data_source_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pDataSourceNode: Pma_data_source_node): ma_result; cdecl;
  ma_data_source_node_uninit: procedure(pDataSourceNode: Pma_data_source_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_data_source_node_set_looping: function(pDataSourceNode: Pma_data_source_node; isLooping: ma_bool32): ma_result; cdecl;
  ma_data_source_node_is_looping: function(pDataSourceNode: Pma_data_source_node): ma_bool32; cdecl;
  ma_splitter_node_config_init: function(channels: ma_uint32): ma_splitter_node_config; cdecl;
  ma_splitter_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_splitter_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pSplitterNode: Pma_splitter_node): ma_result; cdecl;
  ma_splitter_node_uninit: procedure(pSplitterNode: Pma_splitter_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_biquad_node_config_init: function(channels: ma_uint32; b0: Single; b1: Single; b2: Single; a0: Single; a1: Single; a2: Single): ma_biquad_node_config; cdecl;
  ma_biquad_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_biquad_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_biquad_node): ma_result; cdecl;
  ma_biquad_node_reinit: function(const pConfig: Pma_biquad_config; pNode: Pma_biquad_node): ma_result; cdecl;
  ma_biquad_node_uninit: procedure(pNode: Pma_biquad_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_lpf_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_lpf_node_config; cdecl;
  ma_lpf_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_lpf_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_lpf_node): ma_result; cdecl;
  ma_lpf_node_reinit: function(const pConfig: Pma_lpf_config; pNode: Pma_lpf_node): ma_result; cdecl;
  ma_lpf_node_uninit: procedure(pNode: Pma_lpf_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hpf_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_hpf_node_config; cdecl;
  ma_hpf_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_hpf_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_hpf_node): ma_result; cdecl;
  ma_hpf_node_reinit: function(const pConfig: Pma_hpf_config; pNode: Pma_hpf_node): ma_result; cdecl;
  ma_hpf_node_uninit: procedure(pNode: Pma_hpf_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_bpf_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; cutoffFrequency: Double; order: ma_uint32): ma_bpf_node_config; cdecl;
  ma_bpf_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_bpf_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_bpf_node): ma_result; cdecl;
  ma_bpf_node_reinit: function(const pConfig: Pma_bpf_config; pNode: Pma_bpf_node): ma_result; cdecl;
  ma_bpf_node_uninit: procedure(pNode: Pma_bpf_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_notch_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; q: Double; frequency: Double): ma_notch_node_config; cdecl;
  ma_notch_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_notch_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_notch_node): ma_result; cdecl;
  ma_notch_node_reinit: function(const pConfig: Pma_notch_config; pNode: Pma_notch_node): ma_result; cdecl;
  ma_notch_node_uninit: procedure(pNode: Pma_notch_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_peak_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; q: Double; frequency: Double): ma_peak_node_config; cdecl;
  ma_peak_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_peak_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_peak_node): ma_result; cdecl;
  ma_peak_node_reinit: function(const pConfig: Pma_peak_config; pNode: Pma_peak_node): ma_result; cdecl;
  ma_peak_node_uninit: procedure(pNode: Pma_peak_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_loshelf_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; q: Double; frequency: Double): ma_loshelf_node_config; cdecl;
  ma_loshelf_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_loshelf_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_loshelf_node): ma_result; cdecl;
  ma_loshelf_node_reinit: function(const pConfig: Pma_loshelf_config; pNode: Pma_loshelf_node): ma_result; cdecl;
  ma_loshelf_node_uninit: procedure(pNode: Pma_loshelf_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_hishelf_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; gainDB: Double; q: Double; frequency: Double): ma_hishelf_node_config; cdecl;
  ma_hishelf_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_hishelf_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pNode: Pma_hishelf_node): ma_result; cdecl;
  ma_hishelf_node_reinit: function(const pConfig: Pma_hishelf_config; pNode: Pma_hishelf_node): ma_result; cdecl;
  ma_hishelf_node_uninit: procedure(pNode: Pma_hishelf_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_delay_node_config_init: function(channels: ma_uint32; sampleRate: ma_uint32; delayInFrames: ma_uint32; decay: Single): ma_delay_node_config; cdecl;
  ma_delay_node_init: function(pNodeGraph: Pma_node_graph; const pConfig: Pma_delay_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pDelayNode: Pma_delay_node): ma_result; cdecl;
  ma_delay_node_uninit: procedure(pDelayNode: Pma_delay_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_delay_node_set_wet: procedure(pDelayNode: Pma_delay_node; value: Single); cdecl;
  ma_delay_node_get_wet: function(const pDelayNode: Pma_delay_node): Single; cdecl;
  ma_delay_node_set_dry: procedure(pDelayNode: Pma_delay_node; value: Single); cdecl;
  ma_delay_node_get_dry: function(const pDelayNode: Pma_delay_node): Single; cdecl;
  ma_delay_node_set_decay: procedure(pDelayNode: Pma_delay_node; value: Single); cdecl;
  ma_delay_node_get_decay: function(const pDelayNode: Pma_delay_node): Single; cdecl;
  ma_engine_node_config_init: function(pEngine: Pma_engine; type_: ma_engine_node_type; flags: ma_uint32): ma_engine_node_config; cdecl;
  ma_engine_node_get_heap_size: function(const pConfig: Pma_engine_node_config; pHeapSizeInBytes: PNativeUInt): ma_result; cdecl;
  ma_engine_node_init_preallocated: function(const pConfig: Pma_engine_node_config; pHeap: Pointer; pEngineNode: Pma_engine_node): ma_result; cdecl;
  ma_engine_node_init: function(const pConfig: Pma_engine_node_config; const pAllocationCallbacks: Pma_allocation_callbacks; pEngineNode: Pma_engine_node): ma_result; cdecl;
  ma_engine_node_uninit: procedure(pEngineNode: Pma_engine_node; const pAllocationCallbacks: Pma_allocation_callbacks); cdecl;
  ma_sound_config_init: function(): ma_sound_config; cdecl;
  ma_sound_config_init_2: function(pEngine: Pma_engine): ma_sound_config; cdecl;
  ma_sound_group_config_init: function(): ma_sound_group_config; cdecl;
  ma_sound_group_config_init_2: function(pEngine: Pma_engine): ma_sound_group_config; cdecl;
  ma_engine_config_init: function(): ma_engine_config; cdecl;
  ma_engine_init: function(const pConfig: Pma_engine_config; pEngine: Pma_engine): ma_result; cdecl;
  ma_engine_uninit: procedure(pEngine: Pma_engine); cdecl;
  ma_engine_read_pcm_frames: function(pEngine: Pma_engine; pFramesOut: Pointer; frameCount: ma_uint64; pFramesRead: Pma_uint64): ma_result; cdecl;
  ma_engine_get_node_graph: function(pEngine: Pma_engine): Pma_node_graph; cdecl;
  ma_engine_get_resource_manager: function(pEngine: Pma_engine): Pma_resource_manager; cdecl;
  ma_engine_get_device: function(pEngine: Pma_engine): Pma_device; cdecl;
  ma_engine_get_log: function(pEngine: Pma_engine): Pma_log; cdecl;
  ma_engine_get_endpoint: function(pEngine: Pma_engine): Pma_node; cdecl;
  ma_engine_get_time: function(const pEngine: Pma_engine): ma_uint64; cdecl;
  ma_engine_set_time: function(pEngine: Pma_engine; globalTime: ma_uint64): ma_result; cdecl;
  ma_engine_get_channels: function(const pEngine: Pma_engine): ma_uint32; cdecl;
  ma_engine_get_sample_rate: function(const pEngine: Pma_engine): ma_uint32; cdecl;
  ma_engine_start: function(pEngine: Pma_engine): ma_result; cdecl;
  ma_engine_stop: function(pEngine: Pma_engine): ma_result; cdecl;
  ma_engine_set_volume: function(pEngine: Pma_engine; volume: Single): ma_result; cdecl;
  ma_engine_set_gain_db: function(pEngine: Pma_engine; gainDB: Single): ma_result; cdecl;
  ma_engine_get_listener_count: function(const pEngine: Pma_engine): ma_uint32; cdecl;
  ma_engine_find_closest_listener: function(const pEngine: Pma_engine; absolutePosX: Single; absolutePosY: Single; absolutePosZ: Single): ma_uint32; cdecl;
  ma_engine_listener_set_position: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; x: Single; y: Single; z: Single); cdecl;
  ma_engine_listener_get_position: function(const pEngine: Pma_engine; listenerIndex: ma_uint32): ma_vec3f; cdecl;
  ma_engine_listener_set_direction: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; x: Single; y: Single; z: Single); cdecl;
  ma_engine_listener_get_direction: function(const pEngine: Pma_engine; listenerIndex: ma_uint32): ma_vec3f; cdecl;
  ma_engine_listener_set_velocity: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; x: Single; y: Single; z: Single); cdecl;
  ma_engine_listener_get_velocity: function(const pEngine: Pma_engine; listenerIndex: ma_uint32): ma_vec3f; cdecl;
  ma_engine_listener_set_cone: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; innerAngleInRadians: Single; outerAngleInRadians: Single; outerGain: Single); cdecl;
  ma_engine_listener_get_cone: procedure(const pEngine: Pma_engine; listenerIndex: ma_uint32; pInnerAngleInRadians: PSingle; pOuterAngleInRadians: PSingle; pOuterGain: PSingle); cdecl;
  ma_engine_listener_set_world_up: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; x: Single; y: Single; z: Single); cdecl;
  ma_engine_listener_get_world_up: function(const pEngine: Pma_engine; listenerIndex: ma_uint32): ma_vec3f; cdecl;
  ma_engine_listener_set_enabled: procedure(pEngine: Pma_engine; listenerIndex: ma_uint32; isEnabled: ma_bool32); cdecl;
  ma_engine_listener_is_enabled: function(const pEngine: Pma_engine; listenerIndex: ma_uint32): ma_bool32; cdecl;
  ma_engine_play_sound_ex: function(pEngine: Pma_engine; const pFilePath: PUTF8Char; pNode: Pma_node; nodeInputBusIndex: ma_uint32): ma_result; cdecl;
  ma_engine_play_sound: function(pEngine: Pma_engine; const pFilePath: PUTF8Char; pGroup: Pma_sound_group): ma_result; cdecl;
  ma_sound_init_from_file: function(pEngine: Pma_engine; const pFilePath: PUTF8Char; flags: ma_uint32; pGroup: Pma_sound_group; pDoneFence: Pma_fence; pSound: Pma_sound): ma_result; cdecl;
  ma_sound_init_from_file_w: function(pEngine: Pma_engine; const pFilePath: PWideChar; flags: ma_uint32; pGroup: Pma_sound_group; pDoneFence: Pma_fence; pSound: Pma_sound): ma_result; cdecl;
  ma_sound_init_copy: function(pEngine: Pma_engine; const pExistingSound: Pma_sound; flags: ma_uint32; pGroup: Pma_sound_group; pSound: Pma_sound): ma_result; cdecl;
  ma_sound_init_from_data_source: function(pEngine: Pma_engine; pDataSource: Pma_data_source; flags: ma_uint32; pGroup: Pma_sound_group; pSound: Pma_sound): ma_result; cdecl;
  ma_sound_init_ex: function(pEngine: Pma_engine; const pConfig: Pma_sound_config; pSound: Pma_sound): ma_result; cdecl;
  ma_sound_uninit: procedure(pSound: Pma_sound); cdecl;
  ma_sound_get_engine: function(const pSound: Pma_sound): Pma_engine; cdecl;
  ma_sound_get_data_source: function(const pSound: Pma_sound): Pma_data_source; cdecl;
  ma_sound_start: function(pSound: Pma_sound): ma_result; cdecl;
  ma_sound_stop: function(pSound: Pma_sound): ma_result; cdecl;
  ma_sound_set_volume: procedure(pSound: Pma_sound; volume: Single); cdecl;
  ma_sound_get_volume: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_pan: procedure(pSound: Pma_sound; pan: Single); cdecl;
  ma_sound_get_pan: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_pan_mode: procedure(pSound: Pma_sound; panMode: ma_pan_mode); cdecl;
  ma_sound_get_pan_mode: function(const pSound: Pma_sound): ma_pan_mode; cdecl;
  ma_sound_set_pitch: procedure(pSound: Pma_sound; pitch: Single); cdecl;
  ma_sound_get_pitch: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_spatialization_enabled: procedure(pSound: Pma_sound; enabled: ma_bool32); cdecl;
  ma_sound_is_spatialization_enabled: function(const pSound: Pma_sound): ma_bool32; cdecl;
  ma_sound_set_pinned_listener_index: procedure(pSound: Pma_sound; listenerIndex: ma_uint32); cdecl;
  ma_sound_get_pinned_listener_index: function(const pSound: Pma_sound): ma_uint32; cdecl;
  ma_sound_get_listener_index: function(const pSound: Pma_sound): ma_uint32; cdecl;
  ma_sound_get_direction_to_listener: function(const pSound: Pma_sound): ma_vec3f; cdecl;
  ma_sound_set_position: procedure(pSound: Pma_sound; x: Single; y: Single; z: Single); cdecl;
  ma_sound_get_position: function(const pSound: Pma_sound): ma_vec3f; cdecl;
  ma_sound_set_direction: procedure(pSound: Pma_sound; x: Single; y: Single; z: Single); cdecl;
  ma_sound_get_direction: function(const pSound: Pma_sound): ma_vec3f; cdecl;
  ma_sound_set_velocity: procedure(pSound: Pma_sound; x: Single; y: Single; z: Single); cdecl;
  ma_sound_get_velocity: function(const pSound: Pma_sound): ma_vec3f; cdecl;
  ma_sound_set_attenuation_model: procedure(pSound: Pma_sound; attenuationModel: ma_attenuation_model); cdecl;
  ma_sound_get_attenuation_model: function(const pSound: Pma_sound): ma_attenuation_model; cdecl;
  ma_sound_set_positioning: procedure(pSound: Pma_sound; positioning: ma_positioning); cdecl;
  ma_sound_get_positioning: function(const pSound: Pma_sound): ma_positioning; cdecl;
  ma_sound_set_rolloff: procedure(pSound: Pma_sound; rolloff: Single); cdecl;
  ma_sound_get_rolloff: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_min_gain: procedure(pSound: Pma_sound; minGain: Single); cdecl;
  ma_sound_get_min_gain: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_max_gain: procedure(pSound: Pma_sound; maxGain: Single); cdecl;
  ma_sound_get_max_gain: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_min_distance: procedure(pSound: Pma_sound; minDistance: Single); cdecl;
  ma_sound_get_min_distance: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_max_distance: procedure(pSound: Pma_sound; maxDistance: Single); cdecl;
  ma_sound_get_max_distance: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_cone: procedure(pSound: Pma_sound; innerAngleInRadians: Single; outerAngleInRadians: Single; outerGain: Single); cdecl;
  ma_sound_get_cone: procedure(const pSound: Pma_sound; pInnerAngleInRadians: PSingle; pOuterAngleInRadians: PSingle; pOuterGain: PSingle); cdecl;
  ma_sound_set_doppler_factor: procedure(pSound: Pma_sound; dopplerFactor: Single); cdecl;
  ma_sound_get_doppler_factor: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_directional_attenuation_factor: procedure(pSound: Pma_sound; directionalAttenuationFactor: Single); cdecl;
  ma_sound_get_directional_attenuation_factor: function(const pSound: Pma_sound): Single; cdecl;
  ma_sound_set_fade_in_pcm_frames: procedure(pSound: Pma_sound; volumeBeg: Single; volumeEnd: Single; fadeLengthInFrames: ma_uint64); cdecl;
  ma_sound_set_fade_in_milliseconds: procedure(pSound: Pma_sound; volumeBeg: Single; volumeEnd: Single; fadeLengthInMilliseconds: ma_uint64); cdecl;
  ma_sound_get_current_fade_volume: function(pSound: Pma_sound): Single; cdecl;
  ma_sound_set_start_time_in_pcm_frames: procedure(pSound: Pma_sound; absoluteGlobalTimeInFrames: ma_uint64); cdecl;
  ma_sound_set_start_time_in_milliseconds: procedure(pSound: Pma_sound; absoluteGlobalTimeInMilliseconds: ma_uint64); cdecl;
  ma_sound_set_stop_time_in_pcm_frames: procedure(pSound: Pma_sound; absoluteGlobalTimeInFrames: ma_uint64); cdecl;
  ma_sound_set_stop_time_in_milliseconds: procedure(pSound: Pma_sound; absoluteGlobalTimeInMilliseconds: ma_uint64); cdecl;
  ma_sound_is_playing: function(const pSound: Pma_sound): ma_bool32; cdecl;
  ma_sound_get_time_in_pcm_frames: function(const pSound: Pma_sound): ma_uint64; cdecl;
  ma_sound_set_looping: procedure(pSound: Pma_sound; isLooping: ma_bool32); cdecl;
  ma_sound_is_looping: function(const pSound: Pma_sound): ma_bool32; cdecl;
  ma_sound_at_end: function(const pSound: Pma_sound): ma_bool32; cdecl;
  ma_sound_seek_to_pcm_frame: function(pSound: Pma_sound; frameIndex: ma_uint64): ma_result; cdecl;
  ma_sound_get_data_format: function(pSound: Pma_sound; pFormat: Pma_format; pChannels: Pma_uint32; pSampleRate: Pma_uint32; pChannelMap: Pma_channel; channelMapCap: NativeUInt): ma_result; cdecl;
  ma_sound_get_cursor_in_pcm_frames: function(pSound: Pma_sound; pCursor: Pma_uint64): ma_result; cdecl;
  ma_sound_get_length_in_pcm_frames: function(pSound: Pma_sound; pLength: Pma_uint64): ma_result; cdecl;
  ma_sound_get_cursor_in_seconds: function(pSound: Pma_sound; pCursor: PSingle): ma_result; cdecl;
  ma_sound_get_length_in_seconds: function(pSound: Pma_sound; pLength: PSingle): ma_result; cdecl;
  ma_sound_group_init: function(pEngine: Pma_engine; flags: ma_uint32; pParentGroup: Pma_sound_group; pGroup: Pma_sound_group): ma_result; cdecl;
  ma_sound_group_init_ex: function(pEngine: Pma_engine; const pConfig: Pma_sound_group_config; pGroup: Pma_sound_group): ma_result; cdecl;
  ma_sound_group_uninit: procedure(pGroup: Pma_sound_group); cdecl;
  ma_sound_group_get_engine: function(const pGroup: Pma_sound_group): Pma_engine; cdecl;
  ma_sound_group_start: function(pGroup: Pma_sound_group): ma_result; cdecl;
  ma_sound_group_stop: function(pGroup: Pma_sound_group): ma_result; cdecl;
  ma_sound_group_set_volume: procedure(pGroup: Pma_sound_group; volume: Single); cdecl;
  ma_sound_group_get_volume: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_pan: procedure(pGroup: Pma_sound_group; pan: Single); cdecl;
  ma_sound_group_get_pan: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_pan_mode: procedure(pGroup: Pma_sound_group; panMode: ma_pan_mode); cdecl;
  ma_sound_group_get_pan_mode: function(const pGroup: Pma_sound_group): ma_pan_mode; cdecl;
  ma_sound_group_set_pitch: procedure(pGroup: Pma_sound_group; pitch: Single); cdecl;
  ma_sound_group_get_pitch: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_spatialization_enabled: procedure(pGroup: Pma_sound_group; enabled: ma_bool32); cdecl;
  ma_sound_group_is_spatialization_enabled: function(const pGroup: Pma_sound_group): ma_bool32; cdecl;
  ma_sound_group_set_pinned_listener_index: procedure(pGroup: Pma_sound_group; listenerIndex: ma_uint32); cdecl;
  ma_sound_group_get_pinned_listener_index: function(const pGroup: Pma_sound_group): ma_uint32; cdecl;
  ma_sound_group_get_listener_index: function(const pGroup: Pma_sound_group): ma_uint32; cdecl;
  ma_sound_group_get_direction_to_listener: function(const pGroup: Pma_sound_group): ma_vec3f; cdecl;
  ma_sound_group_set_position: procedure(pGroup: Pma_sound_group; x: Single; y: Single; z: Single); cdecl;
  ma_sound_group_get_position: function(const pGroup: Pma_sound_group): ma_vec3f; cdecl;
  ma_sound_group_set_direction: procedure(pGroup: Pma_sound_group; x: Single; y: Single; z: Single); cdecl;
  ma_sound_group_get_direction: function(const pGroup: Pma_sound_group): ma_vec3f; cdecl;
  ma_sound_group_set_velocity: procedure(pGroup: Pma_sound_group; x: Single; y: Single; z: Single); cdecl;
  ma_sound_group_get_velocity: function(const pGroup: Pma_sound_group): ma_vec3f; cdecl;
  ma_sound_group_set_attenuation_model: procedure(pGroup: Pma_sound_group; attenuationModel: ma_attenuation_model); cdecl;
  ma_sound_group_get_attenuation_model: function(const pGroup: Pma_sound_group): ma_attenuation_model; cdecl;
  ma_sound_group_set_positioning: procedure(pGroup: Pma_sound_group; positioning: ma_positioning); cdecl;
  ma_sound_group_get_positioning: function(const pGroup: Pma_sound_group): ma_positioning; cdecl;
  ma_sound_group_set_rolloff: procedure(pGroup: Pma_sound_group; rolloff: Single); cdecl;
  ma_sound_group_get_rolloff: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_min_gain: procedure(pGroup: Pma_sound_group; minGain: Single); cdecl;
  ma_sound_group_get_min_gain: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_max_gain: procedure(pGroup: Pma_sound_group; maxGain: Single); cdecl;
  ma_sound_group_get_max_gain: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_min_distance: procedure(pGroup: Pma_sound_group; minDistance: Single); cdecl;
  ma_sound_group_get_min_distance: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_max_distance: procedure(pGroup: Pma_sound_group; maxDistance: Single); cdecl;
  ma_sound_group_get_max_distance: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_cone: procedure(pGroup: Pma_sound_group; innerAngleInRadians: Single; outerAngleInRadians: Single; outerGain: Single); cdecl;
  ma_sound_group_get_cone: procedure(const pGroup: Pma_sound_group; pInnerAngleInRadians: PSingle; pOuterAngleInRadians: PSingle; pOuterGain: PSingle); cdecl;
  ma_sound_group_set_doppler_factor: procedure(pGroup: Pma_sound_group; dopplerFactor: Single); cdecl;
  ma_sound_group_get_doppler_factor: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_directional_attenuation_factor: procedure(pGroup: Pma_sound_group; directionalAttenuationFactor: Single); cdecl;
  ma_sound_group_get_directional_attenuation_factor: function(const pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_fade_in_pcm_frames: procedure(pGroup: Pma_sound_group; volumeBeg: Single; volumeEnd: Single; fadeLengthInFrames: ma_uint64); cdecl;
  ma_sound_group_set_fade_in_milliseconds: procedure(pGroup: Pma_sound_group; volumeBeg: Single; volumeEnd: Single; fadeLengthInMilliseconds: ma_uint64); cdecl;
  ma_sound_group_get_current_fade_volume: function(pGroup: Pma_sound_group): Single; cdecl;
  ma_sound_group_set_start_time_in_pcm_frames: procedure(pGroup: Pma_sound_group; absoluteGlobalTimeInFrames: ma_uint64); cdecl;
  ma_sound_group_set_start_time_in_milliseconds: procedure(pGroup: Pma_sound_group; absoluteGlobalTimeInMilliseconds: ma_uint64); cdecl;
  ma_sound_group_set_stop_time_in_pcm_frames: procedure(pGroup: Pma_sound_group; absoluteGlobalTimeInFrames: ma_uint64); cdecl;
  ma_sound_group_set_stop_time_in_milliseconds: procedure(pGroup: Pma_sound_group; absoluteGlobalTimeInMilliseconds: ma_uint64); cdecl;
  ma_sound_group_is_playing: function(const pGroup: Pma_sound_group): ma_bool32; cdecl;
  ma_sound_group_get_time_in_pcm_frames: function(const pGroup: Pma_sound_group): ma_uint64; cdecl;
  PHYSFS_init: function(const argv0: PUTF8Char): Integer; cdecl;
  PHYSFS_deinit: function(): Integer; cdecl;
  PHYSFS_getWriteDir: function(): PUTF8Char; cdecl;
  PHYSFS_setWriteDir: function(const newDir: PUTF8Char): Integer; cdecl;
  PHYSFS_mount: function(const newDir: PUTF8Char; const mountPoint: PUTF8Char; appendToPath: Integer): Integer; cdecl;
  PHYSFS_unmount: function(const oldDir: PUTF8Char): Integer; cdecl;
  PHYSFSRWOPS_openRead: function(const fname: PUTF8Char): PSDL_RWops; cdecl;
  PHYSFSRWOPS_openWrite: function(const fname: PUTF8Char): PSDL_RWops; cdecl;
  PHYSFSRWOPS_openAppend: function(const fname: PUTF8Char): PSDL_RWops; cdecl;
  crc32: function(crc: Cardinal; const buf: PByte; len: Cardinal): Cardinal; cdecl;
  zipOpen: function(const pathname: PUTF8Char; append: Integer): zipFile; cdecl;
  zipOpenNewFileInZip3: function(file_: zipFile; const filename: PUTF8Char; const zipfi: Pzip_fileinfo; const extrafield_local: Pointer; intsize_extrafield_local: Cardinal; const extrafield_global: Pointer; intsize_extrafield_global: Cardinal; const comment: PUTF8Char; method: Integer; level: Integer; raw: Integer; windowBits: Integer; memLevel: Integer; strategy: Integer; const password: PUTF8Char; crcForCrypting: Cardinal): Integer; cdecl;
  zipWriteInFileInZip: function(file_: zipFile; const buf: Pointer; len: Cardinal): Integer; cdecl;
  zipCloseFileInZip: function(file_: zipFile): Integer; cdecl;
  zipClose: function(file_: zipFile; const global_comment: PUTF8Char): Integer; cdecl;
  tmx_load: function(const path: PUTF8Char): Ptmx_map; cdecl;
  tmx_load_buffer: function(const buffer: PUTF8Char; len: Integer): Ptmx_map; cdecl;
  tmx_load_fd: function(fd: Integer): Ptmx_map; cdecl;
  tmx_load_callback: function(callback: tmx_read_functor; userdata: Pointer): Ptmx_map; cdecl;
  tmx_map_free: procedure(map: Ptmx_map); cdecl;
  tmx_get_tile: function(map: Ptmx_map; gid: Cardinal): Ptmx_tile; cdecl;
  tmx_find_layer_by_id: function(const map: Ptmx_map; id: Integer): Ptmx_layer; cdecl;
  tmx_find_layer_by_name: function(const map: Ptmx_map; const name: PUTF8Char): Ptmx_layer; cdecl;
  tmx_get_property: function(hash: Ptmx_properties; const key: PUTF8Char): Ptmx_property; cdecl;
  tmx_property_foreach: procedure(hash: Ptmx_properties; callback: tmx_property_functor; userdata: Pointer); cdecl;
  tmx_col_to_bytes: function(color: UInt32): tmx_col_bytes; cdecl;
  tmx_col_to_floats: function(color: UInt32): tmx_col_floats; cdecl;
  tmx_make_resource_manager: function(): Ptmx_resource_manager; cdecl;
  tmx_free_resource_manager: procedure(rc_mgr: Ptmx_resource_manager); cdecl;
  tmx_load_tileset: function(rc_mgr: Ptmx_resource_manager; const path: PUTF8Char): Integer; cdecl;
  tmx_load_tileset_buffer: function(rc_mgr: Ptmx_resource_manager; const buffer: PUTF8Char; len: Integer; const key: PUTF8Char): Integer; cdecl;
  tmx_load_tileset_fd: function(rc_mgr: Ptmx_resource_manager; fd: Integer; const key: PUTF8Char): Integer; cdecl;
  tmx_load_tileset_callback: function(rc_mgr: Ptmx_resource_manager; callback: tmx_read_functor; userdata: Pointer; const key: PUTF8Char): Integer; cdecl;
  tmx_load_template: function(rc_mgr: Ptmx_resource_manager; const path: PUTF8Char): Integer; cdecl;
  tmx_load_template_buffer: function(rc_mgr: Ptmx_resource_manager; const buffer: PUTF8Char; len: Integer; const key: PUTF8Char): Integer; cdecl;
  tmx_load_template_fd: function(rc_mgr: Ptmx_resource_manager; fd: Integer; const key: PUTF8Char): Integer; cdecl;
  tmx_load_template_callback: function(rc_mgr: Ptmx_resource_manager; callback: tmx_read_functor; userdata: Pointer; const key: PUTF8Char): Integer; cdecl;
  tmx_rcmgr_load: function(rc_mgr: Ptmx_resource_manager; const path: PUTF8Char): Ptmx_map; cdecl;
  tmx_rcmgr_load_buffer: function(rc_mgr: Ptmx_resource_manager; const buffer: PUTF8Char; len: Integer): Ptmx_map; cdecl;
  tmx_rcmgr_load_fd: function(rc_mgr: Ptmx_resource_manager; fd: Integer): Ptmx_map; cdecl;
  tmx_rcmgr_load_callback: function(rc_mgr: Ptmx_resource_manager; callback: tmx_read_functor; userdata: Pointer): Ptmx_map; cdecl;
  tmx_perror: procedure(const p1: PUTF8Char); cdecl;
  tmx_strerr: function(): PUTF8Char; cdecl;
  tmx_free_func: Ptmx_free_func;
  tmx_alloc_func: Ptmx_alloc_func;
  tmx_img_free_func: Ptmx_img_free_func;
  tmx_img_load_func: Ptmx_img_load_func;
  json_set_allocation_functions: procedure(malloc_fun: JSON_Malloc_Function; free_fun: JSON_Free_Function); cdecl;
  json_set_escape_slashes: procedure(escape_slashes: Integer); cdecl;
  json_set_float_serialization_format: procedure(const format: PUTF8Char); cdecl;
  json_set_number_serialization_function: procedure(fun: JSON_Number_Serialization_Function); cdecl;
  json_parse_file: function(const filename: PUTF8Char): PJSON_Value; cdecl;
  json_parse_file_with_comments: function(const filename: PUTF8Char): PJSON_Value; cdecl;
  json_parse_string: function(const string_: PUTF8Char): PJSON_Value; cdecl;
  json_parse_string_with_comments: function(const string_: PUTF8Char): PJSON_Value; cdecl;
  json_serialization_size: function(const value: PJSON_Value): NativeUInt; cdecl;
  json_serialize_to_buffer: function(const value: PJSON_Value; buf: PUTF8Char; buf_size_in_bytes: NativeUInt): JSON_Status; cdecl;
  json_serialize_to_file: function(const value: PJSON_Value; const filename: PUTF8Char): JSON_Status; cdecl;
  json_serialize_to_string: function(const value: PJSON_Value): PUTF8Char; cdecl;
  json_serialization_size_pretty: function(const value: PJSON_Value): NativeUInt; cdecl;
  json_serialize_to_buffer_pretty: function(const value: PJSON_Value; buf: PUTF8Char; buf_size_in_bytes: NativeUInt): JSON_Status; cdecl;
  json_serialize_to_file_pretty: function(const value: PJSON_Value; const filename: PUTF8Char): JSON_Status; cdecl;
  json_serialize_to_string_pretty: function(const value: PJSON_Value): PUTF8Char; cdecl;
  json_free_serialized_string: procedure(string_: PUTF8Char); cdecl;
  json_value_equals: function(const a: PJSON_Value; const b: PJSON_Value): Integer; cdecl;
  json_validate: function(const schema: PJSON_Value; const value: PJSON_Value): JSON_Status; cdecl;
  json_object_get_value: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Value; cdecl;
  json_object_get_string: function(const object_: PJSON_Object; const name: PUTF8Char): PUTF8Char; cdecl;
  json_object_get_string_len: function(const object_: PJSON_Object; const name: PUTF8Char): NativeUInt; cdecl;
  json_object_get_object: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Object; cdecl;
  json_object_get_array: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Array; cdecl;
  json_object_get_number: function(const object_: PJSON_Object; const name: PUTF8Char): Double; cdecl;
  json_object_get_boolean: function(const object_: PJSON_Object; const name: PUTF8Char): Integer; cdecl;
  json_object_dotget_value: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Value; cdecl;
  json_object_dotget_string: function(const object_: PJSON_Object; const name: PUTF8Char): PUTF8Char; cdecl;
  json_object_dotget_string_len: function(const object_: PJSON_Object; const name: PUTF8Char): NativeUInt; cdecl;
  json_object_dotget_object: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Object; cdecl;
  json_object_dotget_array: function(const object_: PJSON_Object; const name: PUTF8Char): PJSON_Array; cdecl;
  json_object_dotget_number: function(const object_: PJSON_Object; const name: PUTF8Char): Double; cdecl;
  json_object_dotget_boolean: function(const object_: PJSON_Object; const name: PUTF8Char): Integer; cdecl;
  json_object_get_count: function(const object_: PJSON_Object): NativeUInt; cdecl;
  json_object_get_name: function(const object_: PJSON_Object; index: NativeUInt): PUTF8Char; cdecl;
  json_object_get_value_at: function(const object_: PJSON_Object; index: NativeUInt): PJSON_Value; cdecl;
  json_object_get_wrapping_value: function(const object_: PJSON_Object): PJSON_Value; cdecl;
  json_object_has_value: function(const object_: PJSON_Object; const name: PUTF8Char): Integer; cdecl;
  json_object_has_value_of_type: function(const object_: PJSON_Object; const name: PUTF8Char; type_: JSON_Value_Type): Integer; cdecl;
  json_object_dothas_value: function(const object_: PJSON_Object; const name: PUTF8Char): Integer; cdecl;
  json_object_dothas_value_of_type: function(const object_: PJSON_Object; const name: PUTF8Char; type_: JSON_Value_Type): Integer; cdecl;
  json_object_set_value: function(object_: PJSON_Object; const name: PUTF8Char; value: PJSON_Value): JSON_Status; cdecl;
  json_object_set_string: function(object_: PJSON_Object; const name: PUTF8Char; const string_: PUTF8Char): JSON_Status; cdecl;
  json_object_set_string_with_len: function(object_: PJSON_Object; const name: PUTF8Char; const string_: PUTF8Char; len: NativeUInt): JSON_Status; cdecl;
  json_object_set_number: function(object_: PJSON_Object; const name: PUTF8Char; number: Double): JSON_Status; cdecl;
  json_object_set_boolean: function(object_: PJSON_Object; const name: PUTF8Char; boolean: Integer): JSON_Status; cdecl;
  json_object_set_null: function(object_: PJSON_Object; const name: PUTF8Char): JSON_Status; cdecl;
  json_object_dotset_value: function(object_: PJSON_Object; const name: PUTF8Char; value: PJSON_Value): JSON_Status; cdecl;
  json_object_dotset_string: function(object_: PJSON_Object; const name: PUTF8Char; const string_: PUTF8Char): JSON_Status; cdecl;
  json_object_dotset_string_with_len: function(object_: PJSON_Object; const name: PUTF8Char; const string_: PUTF8Char; len: NativeUInt): JSON_Status; cdecl;
  json_object_dotset_number: function(object_: PJSON_Object; const name: PUTF8Char; number: Double): JSON_Status; cdecl;
  json_object_dotset_boolean: function(object_: PJSON_Object; const name: PUTF8Char; boolean: Integer): JSON_Status; cdecl;
  json_object_dotset_null: function(object_: PJSON_Object; const name: PUTF8Char): JSON_Status; cdecl;
  json_object_remove: function(object_: PJSON_Object; const name: PUTF8Char): JSON_Status; cdecl;
  json_object_dotremove: function(object_: PJSON_Object; const key: PUTF8Char): JSON_Status; cdecl;
  json_object_clear: function(object_: PJSON_Object): JSON_Status; cdecl;
  json_array_get_value: function(const array_: PJSON_Array; index: NativeUInt): PJSON_Value; cdecl;
  json_array_get_string: function(const array_: PJSON_Array; index: NativeUInt): PUTF8Char; cdecl;
  json_array_get_string_len: function(const array_: PJSON_Array; index: NativeUInt): NativeUInt; cdecl;
  json_array_get_object: function(const array_: PJSON_Array; index: NativeUInt): PJSON_Object; cdecl;
  json_array_get_array: function(const array_: PJSON_Array; index: NativeUInt): PJSON_Array; cdecl;
  json_array_get_number: function(const array_: PJSON_Array; index: NativeUInt): Double; cdecl;
  json_array_get_boolean: function(const array_: PJSON_Array; index: NativeUInt): Integer; cdecl;
  json_array_get_count: function(const array_: PJSON_Array): NativeUInt; cdecl;
  json_array_get_wrapping_value: function(const array_: PJSON_Array): PJSON_Value; cdecl;
  json_array_remove: function(array_: PJSON_Array; i: NativeUInt): JSON_Status; cdecl;
  json_array_replace_value: function(array_: PJSON_Array; i: NativeUInt; value: PJSON_Value): JSON_Status; cdecl;
  json_array_replace_string: function(array_: PJSON_Array; i: NativeUInt; const string_: PUTF8Char): JSON_Status; cdecl;
  json_array_replace_string_with_len: function(array_: PJSON_Array; i: NativeUInt; const string_: PUTF8Char; len: NativeUInt): JSON_Status; cdecl;
  json_array_replace_number: function(array_: PJSON_Array; i: NativeUInt; number: Double): JSON_Status; cdecl;
  json_array_replace_boolean: function(array_: PJSON_Array; i: NativeUInt; boolean: Integer): JSON_Status; cdecl;
  json_array_replace_null: function(array_: PJSON_Array; i: NativeUInt): JSON_Status; cdecl;
  json_array_clear: function(array_: PJSON_Array): JSON_Status; cdecl;
  json_array_append_value: function(array_: PJSON_Array; value: PJSON_Value): JSON_Status; cdecl;
  json_array_append_string: function(array_: PJSON_Array; const string_: PUTF8Char): JSON_Status; cdecl;
  json_array_append_string_with_len: function(array_: PJSON_Array; const string_: PUTF8Char; len: NativeUInt): JSON_Status; cdecl;
  json_array_append_number: function(array_: PJSON_Array; number: Double): JSON_Status; cdecl;
  json_array_append_boolean: function(array_: PJSON_Array; boolean: Integer): JSON_Status; cdecl;
  json_array_append_null: function(array_: PJSON_Array): JSON_Status; cdecl;
  json_value_init_object: function(): PJSON_Value; cdecl;
  json_value_init_array: function(): PJSON_Value; cdecl;
  json_value_init_string: function(const string_: PUTF8Char): PJSON_Value; cdecl;
  json_value_init_string_with_len: function(const string_: PUTF8Char; length: NativeUInt): PJSON_Value; cdecl;
  json_value_init_number: function(number: Double): PJSON_Value; cdecl;
  json_value_init_boolean: function(boolean: Integer): PJSON_Value; cdecl;
  json_value_init_null: function(): PJSON_Value; cdecl;
  json_value_deep_copy: function(const value: PJSON_Value): PJSON_Value; cdecl;
  json_value_free: procedure(value: PJSON_Value); cdecl;
  json_value_get_type: function(const value: PJSON_Value): JSON_Value_Type; cdecl;
  json_value_get_object: function(const value: PJSON_Value): PJSON_Object; cdecl;
  json_value_get_array: function(const value: PJSON_Value): PJSON_Array; cdecl;
  json_value_get_string: function(const value: PJSON_Value): PUTF8Char; cdecl;
  json_value_get_string_len: function(const value: PJSON_Value): NativeUInt; cdecl;
  json_value_get_number: function(const value: PJSON_Value): Double; cdecl;
  json_value_get_boolean: function(const value: PJSON_Value): Integer; cdecl;
  json_value_get_parent: function(const value: PJSON_Value): PJSON_Value; cdecl;
  json_type: function(const value: PJSON_Value): JSON_Value_Type; cdecl;
  json_object: function(const value: PJSON_Value): PJSON_Object; cdecl;
  json_array: function(const value: PJSON_Value): PJSON_Array; cdecl;
  json_string: function(const value: PJSON_Value): PUTF8Char; cdecl;
  json_string_len: function(const value: PJSON_Value): NativeUInt; cdecl;
  json_number: function(const value: PJSON_Value): Double; cdecl;
  json_boolean: function(const value: PJSON_Value): Integer; cdecl;
  NBN_GameClient_Start: function(const protocol_name: PUTF8Char; const ip_address: PUTF8Char; port: UInt16; encryption: Boolean; connection_data: PUInt8): Integer; cdecl;
  NBN_GameClient_Disconnect: function(): Integer; cdecl;
  NBN_GameClient_Stop: procedure(); cdecl;
  NBN_GameClient_RegisterMessage: procedure(msg_type: UInt8; msg_builder: NBN_MessageBuilder; msg_destructor: NBN_MessageDestructor; msg_serializer: NBN_MessageSerializer); cdecl;
  NBN_GameClient_RegisterChannel: procedure(type_: UInt8; id: UInt8); cdecl;
  NBN_GameClient_AddTime: procedure(time: Double); cdecl;
  NBN_GameClient_Poll: function(): Integer; cdecl;
  NBN_GameClient_SendPackets: function(): Integer; cdecl;
  NBN_GameClient_SetContext: procedure(context: Pointer); cdecl;
  NBN_GameClient_GetContext: function(): Pointer; cdecl;
  NBN_GameClient_CreateMessage: function(msg_type: UInt8; msg_data: Pointer): PNBN_OutgoingMessage; cdecl;
  NBN_GameClient_CreateByteArrayMessage: function(bytes: PUInt8; length: Cardinal): PNBN_OutgoingMessage; cdecl;
  NBN_GameClient_SendMessage: function(outgoing_msg: PNBN_OutgoingMessage; channel_id: UInt8): Integer; cdecl;
  NBN_GameClient_SendUnreliableMessage: function(outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameClient_SendReliableMessage: function(outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameClient_CreateServerConnection: function(driver_data: Pointer): PNBN_Connection; cdecl;
  NBN_GameClient_GetMessageInfo: function(): NBN_MessageInfo; cdecl;
  NBN_GameClient_GetStats: function(): NBN_ConnectionStats; cdecl;
  NBN_GameClient_GetServerCloseCode: function(): Integer; cdecl;
  NBN_GameClient_GetAcceptDataReadStream: function(): PNBN_Stream; cdecl;
  NBN_GameClient_IsConnected: function(): Boolean; cdecl;
  NBN_GameClient_IsEncryptionEnabled: function(): Boolean; cdecl;
  NBN_GameClient_RegisterRPC: function(id: Integer; signature: NBN_RPC_Signature; func: NBN_RPC_Func): Integer; cdecl;
  NBN_GameClient_CallRPC: function(id: Cardinal): Integer varargs; cdecl;
  NBN_GameServer_Start: function(const protocol_name: PUTF8Char; port: UInt16; encryption: Boolean): Integer; cdecl;
  NBN_GameServer_Stop: procedure(); cdecl;
  NBN_GameServer_RegisterMessage: procedure(msg_type: UInt8; msg_builder: NBN_MessageBuilder; msg_destructor: NBN_MessageDestructor; msg_serializer: NBN_MessageSerializer); cdecl;
  NBN_GameServer_RegisterChannel: procedure(type_: UInt8; id: UInt8); cdecl;
  NBN_GameServer_AddTime: procedure(time: Double); cdecl;
  NBN_GameServer_Poll: function(): Integer; cdecl;
  NBN_GameServer_SendPackets: function(): Integer; cdecl;
  NBN_GameServer_SetContext: procedure(context: Pointer); cdecl;
  NBN_GameServer_GetContext: function(): Pointer; cdecl;
  NBN_GameServer_CreateClientConnection: function(p1: UInt32; p2: Pointer): PNBN_Connection; cdecl;
  NBN_GameServer_CloseClient: function(client: PNBN_Connection): Integer; cdecl;
  NBN_GameServer_CloseClientWithCode: function(client: PNBN_Connection; code: Integer): Integer; cdecl;
  NBN_GameServer_CreateMessage: function(msg_type: UInt8; msg_data: Pointer): PNBN_OutgoingMessage; cdecl;
  NBN_GameServer_CreateByteArrayMessage: function(bytes: PUInt8; length: Cardinal): PNBN_OutgoingMessage; cdecl;
  NBN_GameServer_SendMessageTo: function(client: PNBN_Connection; outgoing_msg: PNBN_OutgoingMessage; channel_id: UInt8): Integer; cdecl;
  NBN_GameServer_SendUnreliableMessageTo: function(client: PNBN_Connection; outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameServer_SendReliableMessageTo: function(client: PNBN_Connection; outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameServer_BroadcastMessage: function(outgoing_msg: PNBN_OutgoingMessage; channel_id: UInt8): Integer; cdecl;
  NBN_GameServer_BroadcastUnreliableMessage: function(outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameServer_BroadcastReliableMessage: function(outgoing_msg: PNBN_OutgoingMessage): Integer; cdecl;
  NBN_GameServer_GetConnectionAcceptDataWriteStream: function(client: PNBN_Connection): PNBN_Stream; cdecl;
  NBN_GameServer_AcceptIncomingConnection: function(): Integer; cdecl;
  NBN_GameServer_RejectIncomingConnectionWithCode: function(code: Integer): Integer; cdecl;
  NBN_GameServer_RejectIncomingConnection: function(): Integer; cdecl;
  NBN_GameServer_GetIncomingConnection: function(): PNBN_Connection; cdecl;
  NBN_GameServer_GetConnectionData: function(client: PNBN_Connection): PUInt8; cdecl;
  NBN_GameServer_GetDisconnectedClient: function(): PNBN_Connection; cdecl;
  NBN_GameServer_GetMessageInfo: function(): NBN_MessageInfo; cdecl;
  NBN_GameServer_GetStats: function(): NBN_GameServerStats; cdecl;
  NBN_GameServer_IsEncryptionEnabled: function(): Boolean; cdecl;
  NBN_GameServer_RegisterRPC: function(id: Integer; signature: NBN_RPC_Signature; func: NBN_RPC_Func): Integer; cdecl;
  NBN_GameServer_CallRPC: function(id: Cardinal; client: PNBN_Connection): Integer varargs; cdecl;

implementation

{$R SDL3.res}

uses
  Classes,
  Windows;

{$REGION ' Internal Memory DLL Loader functions '}
type 
  PIMAGE_NT_HEADERS = ^IMAGE_NT_HEADERS;
  PIMAGE_FILE_HEADER = ^IMAGE_FILE_HEADER;
  PIMAGE_OPTIONAL_HEADER = ^IMAGE_OPTIONAL_HEADER;
  PIMAGE_SECTION_HEADER = ^IMAGE_SECTION_HEADER;
  PIMAGE_DATA_DIRECTORY = ^IMAGE_DATA_DIRECTORY;

  TDWORDArray = array[0..9999999] of Cardinal;
  TWORDArray = array[0..99999999] of WORD;
  PWORDArray = ^TWORDArray;
  PDWORDArray = ^TDWORDArray;

  IMAGE_DOS_HEADER = packed record     
    e_magic: WORD;                     
    e_cblp: WORD;                      
    e_cp: WORD;                        
    e_crlc: WORD;                      
    e_cparhdr: WORD;                   
    e_minalloc: WORD;                  
    e_maxalloc: WORD;                  
    e_ss: WORD;                        
    e_sp: WORD;                        
    e_csum: WORD;                      
    e_ip: WORD;                        
    e_cs: WORD;                        
    e_lfarlc: WORD;                    
    e_ovno: WORD;                      
    e_res: array[0..3] of WORD;        
    e_oemid: WORD;                     
    e_oeminfo: WORD;                   
    e_res2: array[0..9] of WORD;       
    e_lfanew: Cardinal;                
  end;

  PIMAGE_DOS_HEADER = ^IMAGE_DOS_HEADER;

  IMAGE_BASE_RELOCATION  = packed record
    VirtualAddress: Cardinal;
    SizeOfBlock: Cardinal;
  end;

  PIMAGE_BASE_RELOCATION = ^IMAGE_BASE_RELOCATION;
  PIMAGE_EXPORT_DIRECTORY = ^IMAGE_EXPORT_DIRECTORY;
  DLLMAIN = function(hinstDLL: Pointer; fdwReason: Cardinal; lpvReserved: Pointer): Integer; stdcall;
  PDLLMAIN = ^DLLMAIN;

  TMemCpy = procedure(Destination: Pointer; Source: Pointer; Count: NativeUInt);cdecl;
  PMemCpy = ^TMemCpy;

  TZeroMem = procedure(What: Pointer; Count: NativeUInt); stdcall;
  
procedure Internal_CopyMemory(Destination: Pointer; Source: Pointer; Count: NativeUInt);
var
  MemCpy: TMemCpy;
begin
  MemCpy := nil;
  if (nil = @MemCpy) then
    MemCpy := TMemCpy(GetProcAddress(GetModuleHandleA('ntdll.dll'), 'memcpy'));
  MemCpy(Destination, Source, Count);
end;
  
procedure Internal_ZeroMemory(What: Pointer; Count: NativeUInt);
var
  ZeroMem: TZeroMem;
begin
  ZeroMem := nil;
  if (nil = @ZeroMem) then
    ZeroMem := TZeroMem(GetProcAddress(GetModuleHandleA('kernel32.dll'), 'RtlZeroMemory'));
  ZeroMem(What, Count);
end;

function AddToPointer(source: Pointer;value: Cardinal) : Pointer;overload;
begin
  Result := Pointer(NativeUInt(source) + NativeUInt(value));//Int64
end;

function AddToPointer(source: Pointer;value: NativeUInt) : Pointer;{$IFDEF WIN64}overload;{$ENDIF}
begin
  Result := Pointer(NativeUInt(source) + value);
end;

function DecPointer(source: Pointer;value: Pointer) : NativeUInt;
begin
  Result := NativeUInt(source) - NativeUInt(value);
end;

function DecPointerInt(source: Pointer;value: NativeUInt) : NativeUInt;
begin
  Result := NativeUInt(source) - NativeUInt(value);
end;

function min(a: Integer; b: Integer): Integer;
begin
  if (a<b) then
    Result := a
  else
    Result := b;
end;

function MemoryLoadLibary(pData: Pointer) : Pointer;
var
  pPtr: Pointer;
  pImageNTHeaders: PIMAGE_NT_HEADERS;
  intSectionIndex: Integer;
  intImageBaseDelta: Size_t;
  intRelocationInfoSize: UInt;
  pImageBaseRelocations,pReloc: PIMAGE_BASE_RELOCATION;
  pImports,pImport: PIMAGE_IMPORT_DESCRIPTOR;
  pDllMain: DLLMAIN;
  pImageBase: Pointer;
  pImageSectionHeader: PIMAGE_SECTION_HEADER;
  intVirtualSectionSize: Integer;
  intRawSectionSize: Integer;
  pSectionBase: Pointer;
  intRelocCount: Integer;
  pwRelocInfo: PWORD;
  intRelocIndex: Integer;
  magic: PNativeUInt;
  lpszLibName: LPSTR;
  hLib: HMODULE;
  lpPRVA_Import: PNativeUInt;
  lpszFunctionName: LPSTR;
begin
  pPtr := pData;
  pPtr := Pointer(Int64(pPtr) + Int64(PIMAGE_DOS_HEADER(pPtr).e_lfanew));
  pImageNTHeaders := PIMAGE_NT_HEADERS(pPtr);
  pImageBase := VirtualAlloc(nil, pImageNTHeaders^.OptionalHeader.SizeOfImage, MEM_COMMIT, PAGE_EXECUTE_READWRITE);
  Internal_CopyMemory(pImageBase, pData, pImageNTHeaders^.OptionalHeader.SizeOfHeaders);
  pPtr := AddToPointer(pPtr,sizeof(pImageNTHeaders.Signature) + sizeof(pImageNTHeaders.FileHeader) + pImageNTHeaders.FileHeader.SizeOfOptionalHeader);

  for intSectionIndex := 0 to pImageNTHeaders.FileHeader.NumberOfSections-1 do
  begin
    pImageSectionHeader := PIMAGE_SECTION_HEADER(AddToPointer(pPtr,intSectionIndex*sizeof(IMAGE_SECTION_HEADER)));
    intVirtualSectionSize := pImageSectionHeader.Misc.VirtualSize;  //PhysicalAddress new code
    intRawSectionSize := pImageSectionHeader.SizeOfRawData;
    pSectionBase := AddToPointer(pImageBase,pImageSectionHeader.VirtualAddress);
    Internal_ZeroMemory(pSectionBase, intVirtualSectionSize);
    Internal_CopyMemory(pSectionBase, AddToPointer(pData,pImageSectionHeader.PointerToRawData), min(intVirtualSectionSize, intRawSectionSize));
  end;
  
  intImageBaseDelta := DecPointerInt(pImageBase,pImageNTHeaders.OptionalHeader.ImageBase);
  intRelocationInfoSize := pImageNTHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_BASERELOC].Size;
  pImageBaseRelocations := PIMAGE_BASE_RELOCATION(AddToPointer(pImageBase, pImageNTHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_BASERELOC].VirtualAddress));
  pReloc := pImageBaseRelocations;

  while DecPointer(pReloc,pImageBaseRelocations) < intRelocationInfoSize do
  begin
    intRelocCount := (pReloc.SizeOfBlock - sizeof(IMAGE_BASE_RELOCATION)) Div sizeof(WORD);
    pwRelocInfo := PWORD(AddToPointer(pReloc,sizeof(IMAGE_BASE_RELOCATION)));
    for intRelocIndex := 0 to intRelocCount-1 do
    begin
      if (pwRelocInfo^ and $f000) <> 0 then
      begin
        magic := PNativeUInt(AddToPointer(pImageBase,pReloc.VirtualAddress+(pwRelocInfo^ and $0fff)));
        magic^ := NativeUInt(magic^ + intImageBaseDelta);
      end;
      Inc(pwRelocInfo);
    end;
    pReloc := PIMAGE_BASE_RELOCATION(pwRelocInfo);
  end;

  pImports := PIMAGE_IMPORT_DESCRIPTOR(AddToPointer(pImageBase, pImageNTHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress));
  pImport := pImports;

  while 0 <> pImport.Name do
  begin
    lpszLibName := LPSTR(AddToPointer(pImageBase,pImport.Name));
    hLib := LoadLibraryA(lpszLibName);

    if 0 = pImport.TimeDateStamp then
      lpPRVA_Import := AddToPointer(pImageBase,pImport.FirstThunk)
    else
      lpPRVA_Import := AddToPointer(pImageBase,pImport.Characteristics);  //new code

    while lpPRVA_Import^ <> 0 do
    begin
      if (PDWORD(lpPRVA_Import)^ and IMAGE_ORDINAL_FLAG32) <> 0 then
        lpszFunctionName := LPSTR(PDWORD(lpPRVA_Import)^ and $ffff)
      else
        lpszFunctionName := LPSTR(@PIMAGE_IMPORT_BY_NAME(AddToPointer(pImageBase,PUInt(lpPRVA_Import)^)).Name[0]);

      lpPRVA_Import^ := NativeUInt(GetProcAddress(hLib, lpszFunctionName));
      Inc(lpPRVA_Import);
    end;
    Inc(pImport);
  end;

  FlushInstructionCache(GetCurrentProcess(), pImageBase, pImageNTHeaders.OptionalHeader.SizeOfImage);
  if 0 <> pImageNTHeaders.OptionalHeader.AddressOfEntryPoint then
  begin
    pDllMain := DLLMAIN(AddToPointer(pImageBase,pImageNTHeaders.OptionalHeader.AddressOfEntryPoint));

    if nil <> @pDllMain then
    begin
      pDllMain(Pointer(pImageBase), DLL_PROCESS_ATTACH, nil);
      pDllMain(Pointer(pImageBase), DLL_THREAD_ATTACH, nil);
    end;
  end;
  Result := Pointer(pImageBase);
end;

function MemoryGetProcAddress(hModule: Pointer; lpProcName: PAnsiChar) : Pointer;
var
  pImageNTHeaders: PIMAGE_NT_HEADERS;
  pExports: PIMAGE_EXPORT_DIRECTORY;
  dwExportedSymbolIndex: Cardinal;
  pPtr: Pointer;
  dwVirtualAddressOfName: Cardinal;
  lpszName: PAnsiChar;
  wIndex: WORD;
  dwVirtualAddressOfAddressOfProc: Cardinal;
begin
  Result := nil;
  if nil <> hModule then
  begin
    pPtr := hModule;

    pPtr := Pointer(Int64(pPtr) + Int64(PIMAGE_DOS_HEADER(pPtr).e_lfanew));
    pImageNTHeaders := PIMAGE_NT_HEADERS(pPtr);

    pExports := PIMAGE_EXPORT_DIRECTORY(AddToPointer(hModule, pImageNTHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT].VirtualAddress));
    for dwExportedSymbolIndex := 0 to pExports.NumberOfNames-1 do
    begin
      dwVirtualAddressOfName := PDWORDArray(AddToPointer(hModule,pExports.AddressOfNames))[dwExportedSymbolIndex];
      lpszName := LPSTR(AddToPointer(hModule,dwVirtualAddressOfName));

      if lstrcmpA(lpszName, lpProcName) = 0 then // Function found!
      begin
        wIndex := PWORDArray(AddToPointer(hModule,pExports.AddressOfNameOrdinals))[dwExportedSymbolIndex];//new code
        dwVirtualAddressOfAddressOfProc := PDWORDArray(AddToPointer(hModule,pExports.AddressOfFunctions))[wIndex];
        Result := AddToPointer(hModule,dwVirtualAddressOfAddressOfProc);
      end;
    end;
  end
end;

procedure MemoryFreeLibrary(hModule: Pointer);
var
  pImageBase: Pointer;
  pPtr: Pointer;
  pImageNTHeaders: PIMAGE_NT_HEADERS;
  pDllMain: DLLMAIN;
begin
  if nil <> hModule then
  begin
    pImageBase := hModule;

    pPtr := Pointer(hModule);
    pPtr := Pointer(Int64(pPtr) + Int64(PIMAGE_DOS_HEADER(pPtr).e_lfanew));

    pImageNTHeaders := PIMAGE_NT_HEADERS(pPtr);

    pDllMain := DLLMAIN(AddToPointer(pImageBase,pImageNTHeaders.OptionalHeader.AddressOfEntryPoint));

    if nil <> @pDllMain then
    begin
      pDllMain(pImageBase, DLL_THREAD_DETACH, nil);
      pDllMain(pImageBase, DLL_PROCESS_DETACH, nil);
    end;
    VirtualFree(hModule, 0, MEM_RELEASE);
  end;
end;
{$ENDREGION}

procedure GetExports(const aDLLHandle: Pointer);
begin
{$REGION 'Exports'}
  if not Assigned(aDllHandle) then Exit;
  crc32 := MemoryGetProcAddress(aDLLHandle, 'crc32');
  json_array := MemoryGetProcAddress(aDLLHandle, 'json_array');
  json_array_append_boolean := MemoryGetProcAddress(aDLLHandle, 'json_array_append_boolean');
  json_array_append_null := MemoryGetProcAddress(aDLLHandle, 'json_array_append_null');
  json_array_append_number := MemoryGetProcAddress(aDLLHandle, 'json_array_append_number');
  json_array_append_string := MemoryGetProcAddress(aDLLHandle, 'json_array_append_string');
  json_array_append_string_with_len := MemoryGetProcAddress(aDLLHandle, 'json_array_append_string_with_len');
  json_array_append_value := MemoryGetProcAddress(aDLLHandle, 'json_array_append_value');
  json_array_clear := MemoryGetProcAddress(aDLLHandle, 'json_array_clear');
  json_array_get_array := MemoryGetProcAddress(aDLLHandle, 'json_array_get_array');
  json_array_get_boolean := MemoryGetProcAddress(aDLLHandle, 'json_array_get_boolean');
  json_array_get_count := MemoryGetProcAddress(aDLLHandle, 'json_array_get_count');
  json_array_get_number := MemoryGetProcAddress(aDLLHandle, 'json_array_get_number');
  json_array_get_object := MemoryGetProcAddress(aDLLHandle, 'json_array_get_object');
  json_array_get_string := MemoryGetProcAddress(aDLLHandle, 'json_array_get_string');
  json_array_get_string_len := MemoryGetProcAddress(aDLLHandle, 'json_array_get_string_len');
  json_array_get_value := MemoryGetProcAddress(aDLLHandle, 'json_array_get_value');
  json_array_get_wrapping_value := MemoryGetProcAddress(aDLLHandle, 'json_array_get_wrapping_value');
  json_array_remove := MemoryGetProcAddress(aDLLHandle, 'json_array_remove');
  json_array_replace_boolean := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_boolean');
  json_array_replace_null := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_null');
  json_array_replace_number := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_number');
  json_array_replace_string := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_string');
  json_array_replace_string_with_len := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_string_with_len');
  json_array_replace_value := MemoryGetProcAddress(aDLLHandle, 'json_array_replace_value');
  json_boolean := MemoryGetProcAddress(aDLLHandle, 'json_boolean');
  json_free_serialized_string := MemoryGetProcAddress(aDLLHandle, 'json_free_serialized_string');
  json_number := MemoryGetProcAddress(aDLLHandle, 'json_number');
  json_object := MemoryGetProcAddress(aDLLHandle, 'json_object');
  json_object_clear := MemoryGetProcAddress(aDLLHandle, 'json_object_clear');
  json_object_dotget_array := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_array');
  json_object_dotget_boolean := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_boolean');
  json_object_dotget_number := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_number');
  json_object_dotget_object := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_object');
  json_object_dotget_string := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_string');
  json_object_dotget_string_len := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_string_len');
  json_object_dotget_value := MemoryGetProcAddress(aDLLHandle, 'json_object_dotget_value');
  json_object_dothas_value := MemoryGetProcAddress(aDLLHandle, 'json_object_dothas_value');
  json_object_dothas_value_of_type := MemoryGetProcAddress(aDLLHandle, 'json_object_dothas_value_of_type');
  json_object_dotremove := MemoryGetProcAddress(aDLLHandle, 'json_object_dotremove');
  json_object_dotset_boolean := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_boolean');
  json_object_dotset_null := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_null');
  json_object_dotset_number := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_number');
  json_object_dotset_string := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_string');
  json_object_dotset_string_with_len := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_string_with_len');
  json_object_dotset_value := MemoryGetProcAddress(aDLLHandle, 'json_object_dotset_value');
  json_object_get_array := MemoryGetProcAddress(aDLLHandle, 'json_object_get_array');
  json_object_get_boolean := MemoryGetProcAddress(aDLLHandle, 'json_object_get_boolean');
  json_object_get_count := MemoryGetProcAddress(aDLLHandle, 'json_object_get_count');
  json_object_get_name := MemoryGetProcAddress(aDLLHandle, 'json_object_get_name');
  json_object_get_number := MemoryGetProcAddress(aDLLHandle, 'json_object_get_number');
  json_object_get_object := MemoryGetProcAddress(aDLLHandle, 'json_object_get_object');
  json_object_get_string := MemoryGetProcAddress(aDLLHandle, 'json_object_get_string');
  json_object_get_string_len := MemoryGetProcAddress(aDLLHandle, 'json_object_get_string_len');
  json_object_get_value := MemoryGetProcAddress(aDLLHandle, 'json_object_get_value');
  json_object_get_value_at := MemoryGetProcAddress(aDLLHandle, 'json_object_get_value_at');
  json_object_get_wrapping_value := MemoryGetProcAddress(aDLLHandle, 'json_object_get_wrapping_value');
  json_object_has_value := MemoryGetProcAddress(aDLLHandle, 'json_object_has_value');
  json_object_has_value_of_type := MemoryGetProcAddress(aDLLHandle, 'json_object_has_value_of_type');
  json_object_remove := MemoryGetProcAddress(aDLLHandle, 'json_object_remove');
  json_object_set_boolean := MemoryGetProcAddress(aDLLHandle, 'json_object_set_boolean');
  json_object_set_null := MemoryGetProcAddress(aDLLHandle, 'json_object_set_null');
  json_object_set_number := MemoryGetProcAddress(aDLLHandle, 'json_object_set_number');
  json_object_set_string := MemoryGetProcAddress(aDLLHandle, 'json_object_set_string');
  json_object_set_string_with_len := MemoryGetProcAddress(aDLLHandle, 'json_object_set_string_with_len');
  json_object_set_value := MemoryGetProcAddress(aDLLHandle, 'json_object_set_value');
  json_parse_file := MemoryGetProcAddress(aDLLHandle, 'json_parse_file');
  json_parse_file_with_comments := MemoryGetProcAddress(aDLLHandle, 'json_parse_file_with_comments');
  json_parse_string := MemoryGetProcAddress(aDLLHandle, 'json_parse_string');
  json_parse_string_with_comments := MemoryGetProcAddress(aDLLHandle, 'json_parse_string_with_comments');
  json_serialization_size := MemoryGetProcAddress(aDLLHandle, 'json_serialization_size');
  json_serialization_size_pretty := MemoryGetProcAddress(aDLLHandle, 'json_serialization_size_pretty');
  json_serialize_to_buffer := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_buffer');
  json_serialize_to_buffer_pretty := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_buffer_pretty');
  json_serialize_to_file := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_file');
  json_serialize_to_file_pretty := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_file_pretty');
  json_serialize_to_string := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_string');
  json_serialize_to_string_pretty := MemoryGetProcAddress(aDLLHandle, 'json_serialize_to_string_pretty');
  json_set_allocation_functions := MemoryGetProcAddress(aDLLHandle, 'json_set_allocation_functions');
  json_set_escape_slashes := MemoryGetProcAddress(aDLLHandle, 'json_set_escape_slashes');
  json_set_float_serialization_format := MemoryGetProcAddress(aDLLHandle, 'json_set_float_serialization_format');
  json_set_number_serialization_function := MemoryGetProcAddress(aDLLHandle, 'json_set_number_serialization_function');
  json_string := MemoryGetProcAddress(aDLLHandle, 'json_string');
  json_string_len := MemoryGetProcAddress(aDLLHandle, 'json_string_len');
  json_type := MemoryGetProcAddress(aDLLHandle, 'json_type');
  json_validate := MemoryGetProcAddress(aDLLHandle, 'json_validate');
  json_value_deep_copy := MemoryGetProcAddress(aDLLHandle, 'json_value_deep_copy');
  json_value_equals := MemoryGetProcAddress(aDLLHandle, 'json_value_equals');
  json_value_free := MemoryGetProcAddress(aDLLHandle, 'json_value_free');
  json_value_get_array := MemoryGetProcAddress(aDLLHandle, 'json_value_get_array');
  json_value_get_boolean := MemoryGetProcAddress(aDLLHandle, 'json_value_get_boolean');
  json_value_get_number := MemoryGetProcAddress(aDLLHandle, 'json_value_get_number');
  json_value_get_object := MemoryGetProcAddress(aDLLHandle, 'json_value_get_object');
  json_value_get_parent := MemoryGetProcAddress(aDLLHandle, 'json_value_get_parent');
  json_value_get_string := MemoryGetProcAddress(aDLLHandle, 'json_value_get_string');
  json_value_get_string_len := MemoryGetProcAddress(aDLLHandle, 'json_value_get_string_len');
  json_value_get_type := MemoryGetProcAddress(aDLLHandle, 'json_value_get_type');
  json_value_init_array := MemoryGetProcAddress(aDLLHandle, 'json_value_init_array');
  json_value_init_boolean := MemoryGetProcAddress(aDLLHandle, 'json_value_init_boolean');
  json_value_init_null := MemoryGetProcAddress(aDLLHandle, 'json_value_init_null');
  json_value_init_number := MemoryGetProcAddress(aDLLHandle, 'json_value_init_number');
  json_value_init_object := MemoryGetProcAddress(aDLLHandle, 'json_value_init_object');
  json_value_init_string := MemoryGetProcAddress(aDLLHandle, 'json_value_init_string');
  json_value_init_string_with_len := MemoryGetProcAddress(aDLLHandle, 'json_value_init_string_with_len');
  ma_aligned_free := MemoryGetProcAddress(aDLLHandle, 'ma_aligned_free');
  ma_aligned_malloc := MemoryGetProcAddress(aDLLHandle, 'ma_aligned_malloc');
  ma_apply_volume_factor_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_f32');
  ma_apply_volume_factor_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames');
  ma_apply_volume_factor_pcm_frames_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames_f32');
  ma_apply_volume_factor_pcm_frames_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames_s16');
  ma_apply_volume_factor_pcm_frames_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames_s24');
  ma_apply_volume_factor_pcm_frames_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames_s32');
  ma_apply_volume_factor_pcm_frames_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_pcm_frames_u8');
  ma_apply_volume_factor_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_s16');
  ma_apply_volume_factor_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_s24');
  ma_apply_volume_factor_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_s32');
  ma_apply_volume_factor_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_apply_volume_factor_u8');
  ma_async_notification_event_init := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_event_init');
  ma_async_notification_event_signal := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_event_signal');
  ma_async_notification_event_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_event_uninit');
  ma_async_notification_event_wait := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_event_wait');
  ma_async_notification_poll_init := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_poll_init');
  ma_async_notification_poll_is_signalled := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_poll_is_signalled');
  ma_async_notification_signal := MemoryGetProcAddress(aDLLHandle, 'ma_async_notification_signal');
  ma_audio_buffer_alloc_and_init := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_alloc_and_init');
  ma_audio_buffer_at_end := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_at_end');
  ma_audio_buffer_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_config_init');
  ma_audio_buffer_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_get_available_frames');
  ma_audio_buffer_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_get_cursor_in_pcm_frames');
  ma_audio_buffer_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_get_length_in_pcm_frames');
  ma_audio_buffer_init := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_init');
  ma_audio_buffer_init_copy := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_init_copy');
  ma_audio_buffer_map := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_map');
  ma_audio_buffer_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_read_pcm_frames');
  ma_audio_buffer_ref_at_end := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_at_end');
  ma_audio_buffer_ref_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_get_available_frames');
  ma_audio_buffer_ref_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_get_cursor_in_pcm_frames');
  ma_audio_buffer_ref_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_get_length_in_pcm_frames');
  ma_audio_buffer_ref_init := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_init');
  ma_audio_buffer_ref_map := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_map');
  ma_audio_buffer_ref_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_read_pcm_frames');
  ma_audio_buffer_ref_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_seek_to_pcm_frame');
  ma_audio_buffer_ref_set_data := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_set_data');
  ma_audio_buffer_ref_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_uninit');
  ma_audio_buffer_ref_unmap := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_ref_unmap');
  ma_audio_buffer_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_seek_to_pcm_frame');
  ma_audio_buffer_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_uninit');
  ma_audio_buffer_uninit_and_free := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_uninit_and_free');
  ma_audio_buffer_unmap := MemoryGetProcAddress(aDLLHandle, 'ma_audio_buffer_unmap');
  ma_biquad_clear_cache := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_clear_cache');
  ma_biquad_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_config_init');
  ma_biquad_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_get_heap_size');
  ma_biquad_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_get_latency');
  ma_biquad_init := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_init');
  ma_biquad_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_init_preallocated');
  ma_biquad_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_node_config_init');
  ma_biquad_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_node_init');
  ma_biquad_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_node_reinit');
  ma_biquad_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_node_uninit');
  ma_biquad_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_process_pcm_frames');
  ma_biquad_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_reinit');
  ma_biquad_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_biquad_uninit');
  ma_blend_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_blend_f32');
  ma_bpf_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_config_init');
  ma_bpf_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_get_heap_size');
  ma_bpf_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_get_latency');
  ma_bpf_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_init');
  ma_bpf_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_init_preallocated');
  ma_bpf_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_node_config_init');
  ma_bpf_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_node_init');
  ma_bpf_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_node_reinit');
  ma_bpf_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_node_uninit');
  ma_bpf_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_process_pcm_frames');
  ma_bpf_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_reinit');
  ma_bpf_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf_uninit');
  ma_bpf2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_config_init');
  ma_bpf2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_get_heap_size');
  ma_bpf2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_get_latency');
  ma_bpf2_init := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_init');
  ma_bpf2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_init_preallocated');
  ma_bpf2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_process_pcm_frames');
  ma_bpf2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_reinit');
  ma_bpf2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_bpf2_uninit');
  ma_calculate_buffer_size_in_frames_from_descriptor := MemoryGetProcAddress(aDLLHandle, 'ma_calculate_buffer_size_in_frames_from_descriptor');
  ma_calculate_buffer_size_in_frames_from_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_calculate_buffer_size_in_frames_from_milliseconds');
  ma_calculate_buffer_size_in_milliseconds_from_frames := MemoryGetProcAddress(aDLLHandle, 'ma_calculate_buffer_size_in_milliseconds_from_frames');
  ma_calloc := MemoryGetProcAddress(aDLLHandle, 'ma_calloc');
  ma_channel_converter_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_config_init');
  ma_channel_converter_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_get_heap_size');
  ma_channel_converter_get_input_channel_map := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_get_input_channel_map');
  ma_channel_converter_get_output_channel_map := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_get_output_channel_map');
  ma_channel_converter_init := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_init');
  ma_channel_converter_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_init_preallocated');
  ma_channel_converter_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_process_pcm_frames');
  ma_channel_converter_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_channel_converter_uninit');
  ma_channel_map_contains_channel_position := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_contains_channel_position');
  ma_channel_map_copy := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_copy');
  ma_channel_map_copy_or_default := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_copy_or_default');
  ma_channel_map_find_channel_position := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_find_channel_position');
  ma_channel_map_get_channel := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_get_channel');
  ma_channel_map_init_blank := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_init_blank');
  ma_channel_map_init_standard := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_init_standard');
  ma_channel_map_is_blank := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_is_blank');
  ma_channel_map_is_equal := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_is_equal');
  ma_channel_map_is_valid := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_is_valid');
  ma_channel_map_to_string := MemoryGetProcAddress(aDLLHandle, 'ma_channel_map_to_string');
  ma_channel_position_to_string := MemoryGetProcAddress(aDLLHandle, 'ma_channel_position_to_string');
  ma_clip_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_clip_pcm_frames');
  ma_clip_samples_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_clip_samples_f32');
  ma_clip_samples_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_clip_samples_s16');
  ma_clip_samples_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_clip_samples_s24');
  ma_clip_samples_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_clip_samples_s32');
  ma_clip_samples_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_clip_samples_u8');
  ma_context_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_context_config_init');
  ma_context_enumerate_devices := MemoryGetProcAddress(aDLLHandle, 'ma_context_enumerate_devices');
  ma_context_get_device_info := MemoryGetProcAddress(aDLLHandle, 'ma_context_get_device_info');
  ma_context_get_devices := MemoryGetProcAddress(aDLLHandle, 'ma_context_get_devices');
  ma_context_get_log := MemoryGetProcAddress(aDLLHandle, 'ma_context_get_log');
  ma_context_init := MemoryGetProcAddress(aDLLHandle, 'ma_context_init');
  ma_context_is_loopback_supported := MemoryGetProcAddress(aDLLHandle, 'ma_context_is_loopback_supported');
  ma_context_sizeof := MemoryGetProcAddress(aDLLHandle, 'ma_context_sizeof');
  ma_context_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_context_uninit');
  ma_convert_frames := MemoryGetProcAddress(aDLLHandle, 'ma_convert_frames');
  ma_convert_frames_ex := MemoryGetProcAddress(aDLLHandle, 'ma_convert_frames_ex');
  ma_convert_pcm_frames_format := MemoryGetProcAddress(aDLLHandle, 'ma_convert_pcm_frames_format');
  ma_copy_and_apply_volume_and_clip_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_pcm_frames');
  ma_copy_and_apply_volume_and_clip_samples_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_samples_f32');
  ma_copy_and_apply_volume_and_clip_samples_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_samples_s16');
  ma_copy_and_apply_volume_and_clip_samples_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_samples_s24');
  ma_copy_and_apply_volume_and_clip_samples_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_samples_s32');
  ma_copy_and_apply_volume_and_clip_samples_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_and_clip_samples_u8');
  ma_copy_and_apply_volume_factor_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_f32');
  ma_copy_and_apply_volume_factor_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames');
  ma_copy_and_apply_volume_factor_pcm_frames_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames_f32');
  ma_copy_and_apply_volume_factor_pcm_frames_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames_s16');
  ma_copy_and_apply_volume_factor_pcm_frames_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames_s24');
  ma_copy_and_apply_volume_factor_pcm_frames_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames_s32');
  ma_copy_and_apply_volume_factor_pcm_frames_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_pcm_frames_u8');
  ma_copy_and_apply_volume_factor_per_channel_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_per_channel_f32');
  ma_copy_and_apply_volume_factor_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_s16');
  ma_copy_and_apply_volume_factor_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_s24');
  ma_copy_and_apply_volume_factor_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_s32');
  ma_copy_and_apply_volume_factor_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_copy_and_apply_volume_factor_u8');
  ma_copy_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_copy_pcm_frames');
  ma_data_converter_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_config_init');
  ma_data_converter_config_init_default := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_config_init_default');
  ma_data_converter_get_expected_output_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_expected_output_frame_count');
  ma_data_converter_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_heap_size');
  ma_data_converter_get_input_channel_map := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_input_channel_map');
  ma_data_converter_get_input_latency := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_input_latency');
  ma_data_converter_get_output_channel_map := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_output_channel_map');
  ma_data_converter_get_output_latency := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_output_latency');
  ma_data_converter_get_required_input_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_get_required_input_frame_count');
  ma_data_converter_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_init');
  ma_data_converter_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_init_preallocated');
  ma_data_converter_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_process_pcm_frames');
  ma_data_converter_reset := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_reset');
  ma_data_converter_set_rate := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_set_rate');
  ma_data_converter_set_rate_ratio := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_set_rate_ratio');
  ma_data_converter_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_data_converter_uninit');
  ma_data_source_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_config_init');
  ma_data_source_get_current := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_current');
  ma_data_source_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_cursor_in_pcm_frames');
  ma_data_source_get_cursor_in_seconds := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_cursor_in_seconds');
  ma_data_source_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_data_format');
  ma_data_source_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_length_in_pcm_frames');
  ma_data_source_get_length_in_seconds := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_length_in_seconds');
  ma_data_source_get_loop_point_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_loop_point_in_pcm_frames');
  ma_data_source_get_next := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_next');
  ma_data_source_get_next_callback := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_next_callback');
  ma_data_source_get_range_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_get_range_in_pcm_frames');
  ma_data_source_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_init');
  ma_data_source_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_is_looping');
  ma_data_source_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_node_config_init');
  ma_data_source_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_node_init');
  ma_data_source_node_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_node_is_looping');
  ma_data_source_node_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_node_set_looping');
  ma_data_source_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_node_uninit');
  ma_data_source_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_read_pcm_frames');
  ma_data_source_seek_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_seek_pcm_frames');
  ma_data_source_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_seek_to_pcm_frame');
  ma_data_source_set_current := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_current');
  ma_data_source_set_loop_point_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_loop_point_in_pcm_frames');
  ma_data_source_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_looping');
  ma_data_source_set_next := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_next');
  ma_data_source_set_next_callback := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_next_callback');
  ma_data_source_set_range_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_set_range_in_pcm_frames');
  ma_data_source_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_data_source_uninit');
  ma_decode_file := MemoryGetProcAddress(aDLLHandle, 'ma_decode_file');
  ma_decode_from_vfs := MemoryGetProcAddress(aDLLHandle, 'ma_decode_from_vfs');
  ma_decode_memory := MemoryGetProcAddress(aDLLHandle, 'ma_decode_memory');
  ma_decoder_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_config_init');
  ma_decoder_config_init_default := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_config_init_default');
  ma_decoder_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_get_available_frames');
  ma_decoder_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_get_cursor_in_pcm_frames');
  ma_decoder_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_get_data_format');
  ma_decoder_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_get_length_in_pcm_frames');
  ma_decoder_init := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init');
  ma_decoder_init_file := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init_file');
  ma_decoder_init_file_w := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init_file_w');
  ma_decoder_init_memory := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init_memory');
  ma_decoder_init_vfs := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init_vfs');
  ma_decoder_init_vfs_w := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_init_vfs_w');
  ma_decoder_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_read_pcm_frames');
  ma_decoder_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_seek_to_pcm_frame');
  ma_decoder_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_decoder_uninit');
  ma_decoding_backend_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_decoding_backend_config_init');
  ma_default_vfs_init := MemoryGetProcAddress(aDLLHandle, 'ma_default_vfs_init');
  ma_deinterleave_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_deinterleave_pcm_frames');
  ma_delay_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_delay_config_init');
  ma_delay_get_decay := MemoryGetProcAddress(aDLLHandle, 'ma_delay_get_decay');
  ma_delay_get_dry := MemoryGetProcAddress(aDLLHandle, 'ma_delay_get_dry');
  ma_delay_get_wet := MemoryGetProcAddress(aDLLHandle, 'ma_delay_get_wet');
  ma_delay_init := MemoryGetProcAddress(aDLLHandle, 'ma_delay_init');
  ma_delay_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_config_init');
  ma_delay_node_get_decay := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_get_decay');
  ma_delay_node_get_dry := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_get_dry');
  ma_delay_node_get_wet := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_get_wet');
  ma_delay_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_init');
  ma_delay_node_set_decay := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_set_decay');
  ma_delay_node_set_dry := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_set_dry');
  ma_delay_node_set_wet := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_set_wet');
  ma_delay_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_delay_node_uninit');
  ma_delay_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_delay_process_pcm_frames');
  ma_delay_set_decay := MemoryGetProcAddress(aDLLHandle, 'ma_delay_set_decay');
  ma_delay_set_dry := MemoryGetProcAddress(aDLLHandle, 'ma_delay_set_dry');
  ma_delay_set_wet := MemoryGetProcAddress(aDLLHandle, 'ma_delay_set_wet');
  ma_delay_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_delay_uninit');
  ma_device_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_device_config_init');
  ma_device_get_context := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_context');
  ma_device_get_info := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_info');
  ma_device_get_log := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_log');
  ma_device_get_master_volume := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_master_volume');
  ma_device_get_master_volume_db := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_master_volume_db');
  ma_device_get_name := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_name');
  ma_device_get_state := MemoryGetProcAddress(aDLLHandle, 'ma_device_get_state');
  ma_device_handle_backend_data_callback := MemoryGetProcAddress(aDLLHandle, 'ma_device_handle_backend_data_callback');
  ma_device_init := MemoryGetProcAddress(aDLLHandle, 'ma_device_init');
  ma_device_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_device_init_ex');
  ma_device_is_started := MemoryGetProcAddress(aDLLHandle, 'ma_device_is_started');
  ma_device_job_thread_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_device_job_thread_config_init');
  ma_device_job_thread_init := MemoryGetProcAddress(aDLLHandle, 'ma_device_job_thread_init');
  ma_device_job_thread_next := MemoryGetProcAddress(aDLLHandle, 'ma_device_job_thread_next');
  ma_device_job_thread_post := MemoryGetProcAddress(aDLLHandle, 'ma_device_job_thread_post');
  ma_device_job_thread_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_device_job_thread_uninit');
  ma_device_post_init := MemoryGetProcAddress(aDLLHandle, 'ma_device_post_init');
  ma_device_set_master_volume := MemoryGetProcAddress(aDLLHandle, 'ma_device_set_master_volume');
  ma_device_set_master_volume_db := MemoryGetProcAddress(aDLLHandle, 'ma_device_set_master_volume_db');
  ma_device_start := MemoryGetProcAddress(aDLLHandle, 'ma_device_start');
  ma_device_stop := MemoryGetProcAddress(aDLLHandle, 'ma_device_stop');
  ma_device_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_device_uninit');
  ma_duplex_rb_init := MemoryGetProcAddress(aDLLHandle, 'ma_duplex_rb_init');
  ma_duplex_rb_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_duplex_rb_uninit');
  ma_encoder_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_config_init');
  ma_encoder_init := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_init');
  ma_encoder_init_file := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_init_file');
  ma_encoder_init_file_w := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_init_file_w');
  ma_encoder_init_vfs := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_init_vfs');
  ma_encoder_init_vfs_w := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_init_vfs_w');
  ma_encoder_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_uninit');
  ma_encoder_write_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_encoder_write_pcm_frames');
  ma_engine_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_engine_config_init');
  ma_engine_find_closest_listener := MemoryGetProcAddress(aDLLHandle, 'ma_engine_find_closest_listener');
  ma_engine_get_channels := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_channels');
  ma_engine_get_device := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_device');
  ma_engine_get_endpoint := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_endpoint');
  ma_engine_get_listener_count := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_listener_count');
  ma_engine_get_log := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_log');
  ma_engine_get_node_graph := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_node_graph');
  ma_engine_get_resource_manager := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_resource_manager');
  ma_engine_get_sample_rate := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_sample_rate');
  ma_engine_get_time := MemoryGetProcAddress(aDLLHandle, 'ma_engine_get_time');
  ma_engine_init := MemoryGetProcAddress(aDLLHandle, 'ma_engine_init');
  ma_engine_listener_get_cone := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_get_cone');
  ma_engine_listener_get_direction := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_get_direction');
  ma_engine_listener_get_position := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_get_position');
  ma_engine_listener_get_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_get_velocity');
  ma_engine_listener_get_world_up := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_get_world_up');
  ma_engine_listener_is_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_is_enabled');
  ma_engine_listener_set_cone := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_cone');
  ma_engine_listener_set_direction := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_direction');
  ma_engine_listener_set_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_enabled');
  ma_engine_listener_set_position := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_position');
  ma_engine_listener_set_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_velocity');
  ma_engine_listener_set_world_up := MemoryGetProcAddress(aDLLHandle, 'ma_engine_listener_set_world_up');
  ma_engine_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_engine_node_config_init');
  ma_engine_node_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_engine_node_get_heap_size');
  ma_engine_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_engine_node_init');
  ma_engine_node_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_engine_node_init_preallocated');
  ma_engine_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_engine_node_uninit');
  ma_engine_play_sound := MemoryGetProcAddress(aDLLHandle, 'ma_engine_play_sound');
  ma_engine_play_sound_ex := MemoryGetProcAddress(aDLLHandle, 'ma_engine_play_sound_ex');
  ma_engine_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_engine_read_pcm_frames');
  ma_engine_set_gain_db := MemoryGetProcAddress(aDLLHandle, 'ma_engine_set_gain_db');
  ma_engine_set_time := MemoryGetProcAddress(aDLLHandle, 'ma_engine_set_time');
  ma_engine_set_volume := MemoryGetProcAddress(aDLLHandle, 'ma_engine_set_volume');
  ma_engine_start := MemoryGetProcAddress(aDLLHandle, 'ma_engine_start');
  ma_engine_stop := MemoryGetProcAddress(aDLLHandle, 'ma_engine_stop');
  ma_engine_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_engine_uninit');
  ma_event_init := MemoryGetProcAddress(aDLLHandle, 'ma_event_init');
  ma_event_signal := MemoryGetProcAddress(aDLLHandle, 'ma_event_signal');
  ma_event_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_event_uninit');
  ma_event_wait := MemoryGetProcAddress(aDLLHandle, 'ma_event_wait');
  ma_fader_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_fader_config_init');
  ma_fader_get_current_volume := MemoryGetProcAddress(aDLLHandle, 'ma_fader_get_current_volume');
  ma_fader_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_fader_get_data_format');
  ma_fader_init := MemoryGetProcAddress(aDLLHandle, 'ma_fader_init');
  ma_fader_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_fader_process_pcm_frames');
  ma_fader_set_fade := MemoryGetProcAddress(aDLLHandle, 'ma_fader_set_fade');
  ma_fence_acquire := MemoryGetProcAddress(aDLLHandle, 'ma_fence_acquire');
  ma_fence_init := MemoryGetProcAddress(aDLLHandle, 'ma_fence_init');
  ma_fence_release := MemoryGetProcAddress(aDLLHandle, 'ma_fence_release');
  ma_fence_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_fence_uninit');
  ma_fence_wait := MemoryGetProcAddress(aDLLHandle, 'ma_fence_wait');
  ma_free := MemoryGetProcAddress(aDLLHandle, 'ma_free');
  ma_gainer_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_config_init');
  ma_gainer_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_get_heap_size');
  ma_gainer_init := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_init');
  ma_gainer_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_init_preallocated');
  ma_gainer_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_process_pcm_frames');
  ma_gainer_set_gain := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_set_gain');
  ma_gainer_set_gains := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_set_gains');
  ma_gainer_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_gainer_uninit');
  ma_get_backend_name := MemoryGetProcAddress(aDLLHandle, 'ma_get_backend_name');
  ma_get_bytes_per_sample := MemoryGetProcAddress(aDLLHandle, 'ma_get_bytes_per_sample');
  ma_get_enabled_backends := MemoryGetProcAddress(aDLLHandle, 'ma_get_enabled_backends');
  ma_get_format_name := MemoryGetProcAddress(aDLLHandle, 'ma_get_format_name');
  ma_hishelf_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf_node_config_init');
  ma_hishelf_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf_node_init');
  ma_hishelf_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf_node_reinit');
  ma_hishelf_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf_node_uninit');
  ma_hishelf2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_config_init');
  ma_hishelf2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_get_heap_size');
  ma_hishelf2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_get_latency');
  ma_hishelf2_init := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_init');
  ma_hishelf2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_init_preallocated');
  ma_hishelf2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_process_pcm_frames');
  ma_hishelf2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_reinit');
  ma_hishelf2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hishelf2_uninit');
  ma_hpf_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_config_init');
  ma_hpf_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_get_heap_size');
  ma_hpf_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_get_latency');
  ma_hpf_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_init');
  ma_hpf_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_init_preallocated');
  ma_hpf_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_node_config_init');
  ma_hpf_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_node_init');
  ma_hpf_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_node_reinit');
  ma_hpf_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_node_uninit');
  ma_hpf_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_process_pcm_frames');
  ma_hpf_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_reinit');
  ma_hpf_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf_uninit');
  ma_hpf1_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_config_init');
  ma_hpf1_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_get_heap_size');
  ma_hpf1_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_get_latency');
  ma_hpf1_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_init');
  ma_hpf1_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_init_preallocated');
  ma_hpf1_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_process_pcm_frames');
  ma_hpf1_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_reinit');
  ma_hpf1_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf1_uninit');
  ma_hpf2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_config_init');
  ma_hpf2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_get_heap_size');
  ma_hpf2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_get_latency');
  ma_hpf2_init := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_init');
  ma_hpf2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_init_preallocated');
  ma_hpf2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_process_pcm_frames');
  ma_hpf2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_reinit');
  ma_hpf2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_hpf2_uninit');
  ma_interleave_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_interleave_pcm_frames');
  ma_is_backend_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_is_backend_enabled');
  ma_is_loopback_supported := MemoryGetProcAddress(aDLLHandle, 'ma_is_loopback_supported');
  ma_job_init := MemoryGetProcAddress(aDLLHandle, 'ma_job_init');
  ma_job_process := MemoryGetProcAddress(aDLLHandle, 'ma_job_process');
  ma_job_queue_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_config_init');
  ma_job_queue_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_get_heap_size');
  ma_job_queue_init := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_init');
  ma_job_queue_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_init_preallocated');
  ma_job_queue_next := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_next');
  ma_job_queue_post := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_post');
  ma_job_queue_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_job_queue_uninit');
  ma_linear_resampler_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_config_init');
  ma_linear_resampler_get_expected_output_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_get_expected_output_frame_count');
  ma_linear_resampler_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_get_heap_size');
  ma_linear_resampler_get_input_latency := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_get_input_latency');
  ma_linear_resampler_get_output_latency := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_get_output_latency');
  ma_linear_resampler_get_required_input_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_get_required_input_frame_count');
  ma_linear_resampler_init := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_init');
  ma_linear_resampler_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_init_preallocated');
  ma_linear_resampler_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_process_pcm_frames');
  ma_linear_resampler_reset := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_reset');
  ma_linear_resampler_set_rate := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_set_rate');
  ma_linear_resampler_set_rate_ratio := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_set_rate_ratio');
  ma_linear_resampler_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_linear_resampler_uninit');
  ma_log_callback_init := MemoryGetProcAddress(aDLLHandle, 'ma_log_callback_init');
  ma_log_init := MemoryGetProcAddress(aDLLHandle, 'ma_log_init');
  ma_log_level_to_string := MemoryGetProcAddress(aDLLHandle, 'ma_log_level_to_string');
  ma_log_post := MemoryGetProcAddress(aDLLHandle, 'ma_log_post');
  ma_log_postf := MemoryGetProcAddress(aDLLHandle, 'ma_log_postf');
  ma_log_postv := MemoryGetProcAddress(aDLLHandle, 'ma_log_postv');
  ma_log_register_callback := MemoryGetProcAddress(aDLLHandle, 'ma_log_register_callback');
  ma_log_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_log_uninit');
  ma_log_unregister_callback := MemoryGetProcAddress(aDLLHandle, 'ma_log_unregister_callback');
  ma_loshelf_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf_node_config_init');
  ma_loshelf_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf_node_init');
  ma_loshelf_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf_node_reinit');
  ma_loshelf_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf_node_uninit');
  ma_loshelf2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_config_init');
  ma_loshelf2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_get_heap_size');
  ma_loshelf2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_get_latency');
  ma_loshelf2_init := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_init');
  ma_loshelf2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_init_preallocated');
  ma_loshelf2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_process_pcm_frames');
  ma_loshelf2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_reinit');
  ma_loshelf2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_loshelf2_uninit');
  ma_lpf_clear_cache := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_clear_cache');
  ma_lpf_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_config_init');
  ma_lpf_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_get_heap_size');
  ma_lpf_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_get_latency');
  ma_lpf_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_init');
  ma_lpf_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_init_preallocated');
  ma_lpf_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_node_config_init');
  ma_lpf_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_node_init');
  ma_lpf_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_node_reinit');
  ma_lpf_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_node_uninit');
  ma_lpf_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_process_pcm_frames');
  ma_lpf_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_reinit');
  ma_lpf_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf_uninit');
  ma_lpf1_clear_cache := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_clear_cache');
  ma_lpf1_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_config_init');
  ma_lpf1_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_get_heap_size');
  ma_lpf1_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_get_latency');
  ma_lpf1_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_init');
  ma_lpf1_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_init_preallocated');
  ma_lpf1_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_process_pcm_frames');
  ma_lpf1_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_reinit');
  ma_lpf1_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf1_uninit');
  ma_lpf2_clear_cache := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_clear_cache');
  ma_lpf2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_config_init');
  ma_lpf2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_get_heap_size');
  ma_lpf2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_get_latency');
  ma_lpf2_init := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_init');
  ma_lpf2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_init_preallocated');
  ma_lpf2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_process_pcm_frames');
  ma_lpf2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_reinit');
  ma_lpf2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_lpf2_uninit');
  ma_malloc := MemoryGetProcAddress(aDLLHandle, 'ma_malloc');
  ma_mutex_init := MemoryGetProcAddress(aDLLHandle, 'ma_mutex_init');
  ma_mutex_lock := MemoryGetProcAddress(aDLLHandle, 'ma_mutex_lock');
  ma_mutex_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_mutex_uninit');
  ma_mutex_unlock := MemoryGetProcAddress(aDLLHandle, 'ma_mutex_unlock');
  ma_node_attach_output_bus := MemoryGetProcAddress(aDLLHandle, 'ma_node_attach_output_bus');
  ma_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_node_config_init');
  ma_node_detach_all_output_buses := MemoryGetProcAddress(aDLLHandle, 'ma_node_detach_all_output_buses');
  ma_node_detach_output_bus := MemoryGetProcAddress(aDLLHandle, 'ma_node_detach_output_bus');
  ma_node_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_heap_size');
  ma_node_get_input_bus_count := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_input_bus_count');
  ma_node_get_input_channels := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_input_channels');
  ma_node_get_node_graph := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_node_graph');
  ma_node_get_output_bus_count := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_output_bus_count');
  ma_node_get_output_bus_volume := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_output_bus_volume');
  ma_node_get_output_channels := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_output_channels');
  ma_node_get_state := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_state');
  ma_node_get_state_by_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_state_by_time');
  ma_node_get_state_by_time_range := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_state_by_time_range');
  ma_node_get_state_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_state_time');
  ma_node_get_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_get_time');
  ma_node_graph_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_config_init');
  ma_node_graph_get_channels := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_get_channels');
  ma_node_graph_get_endpoint := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_get_endpoint');
  ma_node_graph_get_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_get_time');
  ma_node_graph_init := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_init');
  ma_node_graph_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_read_pcm_frames');
  ma_node_graph_set_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_set_time');
  ma_node_graph_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_node_graph_uninit');
  ma_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_node_init');
  ma_node_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_node_init_preallocated');
  ma_node_set_output_bus_volume := MemoryGetProcAddress(aDLLHandle, 'ma_node_set_output_bus_volume');
  ma_node_set_state := MemoryGetProcAddress(aDLLHandle, 'ma_node_set_state');
  ma_node_set_state_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_set_state_time');
  ma_node_set_time := MemoryGetProcAddress(aDLLHandle, 'ma_node_set_time');
  ma_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_node_uninit');
  ma_noise_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_noise_config_init');
  ma_noise_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_noise_get_heap_size');
  ma_noise_init := MemoryGetProcAddress(aDLLHandle, 'ma_noise_init');
  ma_noise_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_noise_init_preallocated');
  ma_noise_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_noise_read_pcm_frames');
  ma_noise_set_amplitude := MemoryGetProcAddress(aDLLHandle, 'ma_noise_set_amplitude');
  ma_noise_set_seed := MemoryGetProcAddress(aDLLHandle, 'ma_noise_set_seed');
  ma_noise_set_type := MemoryGetProcAddress(aDLLHandle, 'ma_noise_set_type');
  ma_noise_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_noise_uninit');
  ma_notch_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_notch_node_config_init');
  ma_notch_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_notch_node_init');
  ma_notch_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_notch_node_reinit');
  ma_notch_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_notch_node_uninit');
  ma_notch2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_config_init');
  ma_notch2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_get_heap_size');
  ma_notch2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_get_latency');
  ma_notch2_init := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_init');
  ma_notch2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_init_preallocated');
  ma_notch2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_process_pcm_frames');
  ma_notch2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_reinit');
  ma_notch2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_notch2_uninit');
  ma_offset_pcm_frames_const_ptr := MemoryGetProcAddress(aDLLHandle, 'ma_offset_pcm_frames_const_ptr');
  ma_offset_pcm_frames_ptr := MemoryGetProcAddress(aDLLHandle, 'ma_offset_pcm_frames_ptr');
  ma_paged_audio_buffer_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_config_init');
  ma_paged_audio_buffer_data_allocate_and_append_page := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_allocate_and_append_page');
  ma_paged_audio_buffer_data_allocate_page := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_allocate_page');
  ma_paged_audio_buffer_data_append_page := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_append_page');
  ma_paged_audio_buffer_data_free_page := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_free_page');
  ma_paged_audio_buffer_data_get_head := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_get_head');
  ma_paged_audio_buffer_data_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_get_length_in_pcm_frames');
  ma_paged_audio_buffer_data_get_tail := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_get_tail');
  ma_paged_audio_buffer_data_init := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_init');
  ma_paged_audio_buffer_data_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_data_uninit');
  ma_paged_audio_buffer_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_get_cursor_in_pcm_frames');
  ma_paged_audio_buffer_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_get_length_in_pcm_frames');
  ma_paged_audio_buffer_init := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_init');
  ma_paged_audio_buffer_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_read_pcm_frames');
  ma_paged_audio_buffer_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_seek_to_pcm_frame');
  ma_paged_audio_buffer_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_paged_audio_buffer_uninit');
  ma_panner_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_panner_config_init');
  ma_panner_get_mode := MemoryGetProcAddress(aDLLHandle, 'ma_panner_get_mode');
  ma_panner_get_pan := MemoryGetProcAddress(aDLLHandle, 'ma_panner_get_pan');
  ma_panner_init := MemoryGetProcAddress(aDLLHandle, 'ma_panner_init');
  ma_panner_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_panner_process_pcm_frames');
  ma_panner_set_mode := MemoryGetProcAddress(aDLLHandle, 'ma_panner_set_mode');
  ma_panner_set_pan := MemoryGetProcAddress(aDLLHandle, 'ma_panner_set_pan');
  ma_pcm_convert := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_convert');
  ma_pcm_f32_to_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_f32_to_s16');
  ma_pcm_f32_to_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_f32_to_s24');
  ma_pcm_f32_to_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_f32_to_s32');
  ma_pcm_f32_to_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_f32_to_u8');
  ma_pcm_rb_acquire_read := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_acquire_read');
  ma_pcm_rb_acquire_write := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_acquire_write');
  ma_pcm_rb_available_read := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_available_read');
  ma_pcm_rb_available_write := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_available_write');
  ma_pcm_rb_commit_read := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_commit_read');
  ma_pcm_rb_commit_write := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_commit_write');
  ma_pcm_rb_get_subbuffer_offset := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_get_subbuffer_offset');
  ma_pcm_rb_get_subbuffer_ptr := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_get_subbuffer_ptr');
  ma_pcm_rb_get_subbuffer_size := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_get_subbuffer_size');
  ma_pcm_rb_get_subbuffer_stride := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_get_subbuffer_stride');
  ma_pcm_rb_init := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_init');
  ma_pcm_rb_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_init_ex');
  ma_pcm_rb_pointer_distance := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_pointer_distance');
  ma_pcm_rb_reset := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_reset');
  ma_pcm_rb_seek_read := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_seek_read');
  ma_pcm_rb_seek_write := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_seek_write');
  ma_pcm_rb_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_rb_uninit');
  ma_pcm_s16_to_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s16_to_f32');
  ma_pcm_s16_to_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s16_to_s24');
  ma_pcm_s16_to_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s16_to_s32');
  ma_pcm_s16_to_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s16_to_u8');
  ma_pcm_s24_to_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s24_to_f32');
  ma_pcm_s24_to_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s24_to_s16');
  ma_pcm_s24_to_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s24_to_s32');
  ma_pcm_s24_to_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s24_to_u8');
  ma_pcm_s32_to_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s32_to_f32');
  ma_pcm_s32_to_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s32_to_s16');
  ma_pcm_s32_to_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s32_to_s24');
  ma_pcm_s32_to_u8 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_s32_to_u8');
  ma_pcm_u8_to_f32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_u8_to_f32');
  ma_pcm_u8_to_s16 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_u8_to_s16');
  ma_pcm_u8_to_s24 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_u8_to_s24');
  ma_pcm_u8_to_s32 := MemoryGetProcAddress(aDLLHandle, 'ma_pcm_u8_to_s32');
  ma_peak_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_peak_node_config_init');
  ma_peak_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_peak_node_init');
  ma_peak_node_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_peak_node_reinit');
  ma_peak_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_peak_node_uninit');
  ma_peak2_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_config_init');
  ma_peak2_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_get_heap_size');
  ma_peak2_get_latency := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_get_latency');
  ma_peak2_init := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_init');
  ma_peak2_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_init_preallocated');
  ma_peak2_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_process_pcm_frames');
  ma_peak2_reinit := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_reinit');
  ma_peak2_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_peak2_uninit');
  ma_rb_acquire_read := MemoryGetProcAddress(aDLLHandle, 'ma_rb_acquire_read');
  ma_rb_acquire_write := MemoryGetProcAddress(aDLLHandle, 'ma_rb_acquire_write');
  ma_rb_available_read := MemoryGetProcAddress(aDLLHandle, 'ma_rb_available_read');
  ma_rb_available_write := MemoryGetProcAddress(aDLLHandle, 'ma_rb_available_write');
  ma_rb_commit_read := MemoryGetProcAddress(aDLLHandle, 'ma_rb_commit_read');
  ma_rb_commit_write := MemoryGetProcAddress(aDLLHandle, 'ma_rb_commit_write');
  ma_rb_get_subbuffer_offset := MemoryGetProcAddress(aDLLHandle, 'ma_rb_get_subbuffer_offset');
  ma_rb_get_subbuffer_ptr := MemoryGetProcAddress(aDLLHandle, 'ma_rb_get_subbuffer_ptr');
  ma_rb_get_subbuffer_size := MemoryGetProcAddress(aDLLHandle, 'ma_rb_get_subbuffer_size');
  ma_rb_get_subbuffer_stride := MemoryGetProcAddress(aDLLHandle, 'ma_rb_get_subbuffer_stride');
  ma_rb_init := MemoryGetProcAddress(aDLLHandle, 'ma_rb_init');
  ma_rb_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_rb_init_ex');
  ma_rb_pointer_distance := MemoryGetProcAddress(aDLLHandle, 'ma_rb_pointer_distance');
  ma_rb_reset := MemoryGetProcAddress(aDLLHandle, 'ma_rb_reset');
  ma_rb_seek_read := MemoryGetProcAddress(aDLLHandle, 'ma_rb_seek_read');
  ma_rb_seek_write := MemoryGetProcAddress(aDLLHandle, 'ma_rb_seek_write');
  ma_rb_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_rb_uninit');
  ma_realloc := MemoryGetProcAddress(aDLLHandle, 'ma_realloc');
  ma_resampler_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_config_init');
  ma_resampler_get_expected_output_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_get_expected_output_frame_count');
  ma_resampler_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_get_heap_size');
  ma_resampler_get_input_latency := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_get_input_latency');
  ma_resampler_get_output_latency := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_get_output_latency');
  ma_resampler_get_required_input_frame_count := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_get_required_input_frame_count');
  ma_resampler_init := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_init');
  ma_resampler_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_init_preallocated');
  ma_resampler_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_process_pcm_frames');
  ma_resampler_reset := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_reset');
  ma_resampler_set_rate := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_set_rate');
  ma_resampler_set_rate_ratio := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_set_rate_ratio');
  ma_resampler_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_resampler_uninit');
  ma_resource_manager_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_config_init');
  ma_resource_manager_data_buffer_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_get_available_frames');
  ma_resource_manager_data_buffer_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_get_cursor_in_pcm_frames');
  ma_resource_manager_data_buffer_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_get_data_format');
  ma_resource_manager_data_buffer_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_get_length_in_pcm_frames');
  ma_resource_manager_data_buffer_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_init');
  ma_resource_manager_data_buffer_init_copy := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_init_copy');
  ma_resource_manager_data_buffer_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_init_ex');
  ma_resource_manager_data_buffer_init_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_init_w');
  ma_resource_manager_data_buffer_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_is_looping');
  ma_resource_manager_data_buffer_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_read_pcm_frames');
  ma_resource_manager_data_buffer_result := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_result');
  ma_resource_manager_data_buffer_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_seek_to_pcm_frame');
  ma_resource_manager_data_buffer_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_set_looping');
  ma_resource_manager_data_buffer_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_buffer_uninit');
  ma_resource_manager_data_source_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_config_init');
  ma_resource_manager_data_source_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_get_available_frames');
  ma_resource_manager_data_source_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_get_cursor_in_pcm_frames');
  ma_resource_manager_data_source_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_get_data_format');
  ma_resource_manager_data_source_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_get_length_in_pcm_frames');
  ma_resource_manager_data_source_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_init');
  ma_resource_manager_data_source_init_copy := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_init_copy');
  ma_resource_manager_data_source_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_init_ex');
  ma_resource_manager_data_source_init_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_init_w');
  ma_resource_manager_data_source_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_is_looping');
  ma_resource_manager_data_source_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_read_pcm_frames');
  ma_resource_manager_data_source_result := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_result');
  ma_resource_manager_data_source_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_seek_to_pcm_frame');
  ma_resource_manager_data_source_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_set_looping');
  ma_resource_manager_data_source_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_source_uninit');
  ma_resource_manager_data_stream_get_available_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_get_available_frames');
  ma_resource_manager_data_stream_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_get_cursor_in_pcm_frames');
  ma_resource_manager_data_stream_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_get_data_format');
  ma_resource_manager_data_stream_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_get_length_in_pcm_frames');
  ma_resource_manager_data_stream_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_init');
  ma_resource_manager_data_stream_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_init_ex');
  ma_resource_manager_data_stream_init_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_init_w');
  ma_resource_manager_data_stream_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_is_looping');
  ma_resource_manager_data_stream_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_read_pcm_frames');
  ma_resource_manager_data_stream_result := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_result');
  ma_resource_manager_data_stream_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_seek_to_pcm_frame');
  ma_resource_manager_data_stream_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_set_looping');
  ma_resource_manager_data_stream_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_data_stream_uninit');
  ma_resource_manager_get_log := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_get_log');
  ma_resource_manager_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_init');
  ma_resource_manager_next_job := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_next_job');
  ma_resource_manager_pipeline_notifications_init := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_pipeline_notifications_init');
  ma_resource_manager_post_job := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_post_job');
  ma_resource_manager_post_job_quit := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_post_job_quit');
  ma_resource_manager_process_job := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_process_job');
  ma_resource_manager_process_next_job := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_process_next_job');
  ma_resource_manager_register_decoded_data := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_decoded_data');
  ma_resource_manager_register_decoded_data_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_decoded_data_w');
  ma_resource_manager_register_encoded_data := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_encoded_data');
  ma_resource_manager_register_encoded_data_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_encoded_data_w');
  ma_resource_manager_register_file := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_file');
  ma_resource_manager_register_file_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_register_file_w');
  ma_resource_manager_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_uninit');
  ma_resource_manager_unregister_data := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_unregister_data');
  ma_resource_manager_unregister_data_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_unregister_data_w');
  ma_resource_manager_unregister_file := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_unregister_file');
  ma_resource_manager_unregister_file_w := MemoryGetProcAddress(aDLLHandle, 'ma_resource_manager_unregister_file_w');
  ma_result_description := MemoryGetProcAddress(aDLLHandle, 'ma_result_description');
  ma_silence_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_silence_pcm_frames');
  ma_slot_allocator_alloc := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_alloc');
  ma_slot_allocator_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_config_init');
  ma_slot_allocator_free := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_free');
  ma_slot_allocator_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_get_heap_size');
  ma_slot_allocator_init := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_init');
  ma_slot_allocator_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_init_preallocated');
  ma_slot_allocator_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_slot_allocator_uninit');
  ma_sound_at_end := MemoryGetProcAddress(aDLLHandle, 'ma_sound_at_end');
  ma_sound_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_sound_config_init');
  ma_sound_config_init_2 := MemoryGetProcAddress(aDLLHandle, 'ma_sound_config_init_2');
  ma_sound_get_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_attenuation_model');
  ma_sound_get_cone := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_cone');
  ma_sound_get_current_fade_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_current_fade_volume');
  ma_sound_get_cursor_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_cursor_in_pcm_frames');
  ma_sound_get_cursor_in_seconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_cursor_in_seconds');
  ma_sound_get_data_format := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_data_format');
  ma_sound_get_data_source := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_data_source');
  ma_sound_get_direction := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_direction');
  ma_sound_get_direction_to_listener := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_direction_to_listener');
  ma_sound_get_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_directional_attenuation_factor');
  ma_sound_get_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_doppler_factor');
  ma_sound_get_engine := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_engine');
  ma_sound_get_length_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_length_in_pcm_frames');
  ma_sound_get_length_in_seconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_length_in_seconds');
  ma_sound_get_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_listener_index');
  ma_sound_get_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_max_distance');
  ma_sound_get_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_max_gain');
  ma_sound_get_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_min_distance');
  ma_sound_get_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_min_gain');
  ma_sound_get_pan := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_pan');
  ma_sound_get_pan_mode := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_pan_mode');
  ma_sound_get_pinned_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_pinned_listener_index');
  ma_sound_get_pitch := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_pitch');
  ma_sound_get_position := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_position');
  ma_sound_get_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_positioning');
  ma_sound_get_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_rolloff');
  ma_sound_get_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_time_in_pcm_frames');
  ma_sound_get_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_velocity');
  ma_sound_get_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_get_volume');
  ma_sound_group_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_config_init');
  ma_sound_group_config_init_2 := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_config_init_2');
  ma_sound_group_get_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_attenuation_model');
  ma_sound_group_get_cone := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_cone');
  ma_sound_group_get_current_fade_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_current_fade_volume');
  ma_sound_group_get_direction := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_direction');
  ma_sound_group_get_direction_to_listener := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_direction_to_listener');
  ma_sound_group_get_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_directional_attenuation_factor');
  ma_sound_group_get_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_doppler_factor');
  ma_sound_group_get_engine := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_engine');
  ma_sound_group_get_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_listener_index');
  ma_sound_group_get_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_max_distance');
  ma_sound_group_get_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_max_gain');
  ma_sound_group_get_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_min_distance');
  ma_sound_group_get_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_min_gain');
  ma_sound_group_get_pan := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_pan');
  ma_sound_group_get_pan_mode := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_pan_mode');
  ma_sound_group_get_pinned_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_pinned_listener_index');
  ma_sound_group_get_pitch := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_pitch');
  ma_sound_group_get_position := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_position');
  ma_sound_group_get_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_positioning');
  ma_sound_group_get_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_rolloff');
  ma_sound_group_get_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_time_in_pcm_frames');
  ma_sound_group_get_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_velocity');
  ma_sound_group_get_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_get_volume');
  ma_sound_group_init := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_init');
  ma_sound_group_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_init_ex');
  ma_sound_group_is_playing := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_is_playing');
  ma_sound_group_is_spatialization_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_is_spatialization_enabled');
  ma_sound_group_set_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_attenuation_model');
  ma_sound_group_set_cone := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_cone');
  ma_sound_group_set_direction := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_direction');
  ma_sound_group_set_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_directional_attenuation_factor');
  ma_sound_group_set_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_doppler_factor');
  ma_sound_group_set_fade_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_fade_in_milliseconds');
  ma_sound_group_set_fade_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_fade_in_pcm_frames');
  ma_sound_group_set_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_max_distance');
  ma_sound_group_set_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_max_gain');
  ma_sound_group_set_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_min_distance');
  ma_sound_group_set_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_min_gain');
  ma_sound_group_set_pan := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_pan');
  ma_sound_group_set_pan_mode := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_pan_mode');
  ma_sound_group_set_pinned_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_pinned_listener_index');
  ma_sound_group_set_pitch := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_pitch');
  ma_sound_group_set_position := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_position');
  ma_sound_group_set_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_positioning');
  ma_sound_group_set_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_rolloff');
  ma_sound_group_set_spatialization_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_spatialization_enabled');
  ma_sound_group_set_start_time_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_start_time_in_milliseconds');
  ma_sound_group_set_start_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_start_time_in_pcm_frames');
  ma_sound_group_set_stop_time_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_stop_time_in_milliseconds');
  ma_sound_group_set_stop_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_stop_time_in_pcm_frames');
  ma_sound_group_set_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_velocity');
  ma_sound_group_set_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_set_volume');
  ma_sound_group_start := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_start');
  ma_sound_group_stop := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_stop');
  ma_sound_group_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_sound_group_uninit');
  ma_sound_init_copy := MemoryGetProcAddress(aDLLHandle, 'ma_sound_init_copy');
  ma_sound_init_ex := MemoryGetProcAddress(aDLLHandle, 'ma_sound_init_ex');
  ma_sound_init_from_data_source := MemoryGetProcAddress(aDLLHandle, 'ma_sound_init_from_data_source');
  ma_sound_init_from_file := MemoryGetProcAddress(aDLLHandle, 'ma_sound_init_from_file');
  ma_sound_init_from_file_w := MemoryGetProcAddress(aDLLHandle, 'ma_sound_init_from_file_w');
  ma_sound_is_looping := MemoryGetProcAddress(aDLLHandle, 'ma_sound_is_looping');
  ma_sound_is_playing := MemoryGetProcAddress(aDLLHandle, 'ma_sound_is_playing');
  ma_sound_is_spatialization_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_sound_is_spatialization_enabled');
  ma_sound_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_sound_seek_to_pcm_frame');
  ma_sound_set_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_attenuation_model');
  ma_sound_set_cone := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_cone');
  ma_sound_set_direction := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_direction');
  ma_sound_set_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_directional_attenuation_factor');
  ma_sound_set_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_doppler_factor');
  ma_sound_set_fade_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_fade_in_milliseconds');
  ma_sound_set_fade_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_fade_in_pcm_frames');
  ma_sound_set_looping := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_looping');
  ma_sound_set_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_max_distance');
  ma_sound_set_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_max_gain');
  ma_sound_set_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_min_distance');
  ma_sound_set_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_min_gain');
  ma_sound_set_pan := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_pan');
  ma_sound_set_pan_mode := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_pan_mode');
  ma_sound_set_pinned_listener_index := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_pinned_listener_index');
  ma_sound_set_pitch := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_pitch');
  ma_sound_set_position := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_position');
  ma_sound_set_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_positioning');
  ma_sound_set_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_rolloff');
  ma_sound_set_spatialization_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_spatialization_enabled');
  ma_sound_set_start_time_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_start_time_in_milliseconds');
  ma_sound_set_start_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_start_time_in_pcm_frames');
  ma_sound_set_stop_time_in_milliseconds := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_stop_time_in_milliseconds');
  ma_sound_set_stop_time_in_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_stop_time_in_pcm_frames');
  ma_sound_set_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_velocity');
  ma_sound_set_volume := MemoryGetProcAddress(aDLLHandle, 'ma_sound_set_volume');
  ma_sound_start := MemoryGetProcAddress(aDLLHandle, 'ma_sound_start');
  ma_sound_stop := MemoryGetProcAddress(aDLLHandle, 'ma_sound_stop');
  ma_sound_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_sound_uninit');
  ma_spatializer_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_config_init');
  ma_spatializer_get_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_attenuation_model');
  ma_spatializer_get_cone := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_cone');
  ma_spatializer_get_direction := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_direction');
  ma_spatializer_get_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_directional_attenuation_factor');
  ma_spatializer_get_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_doppler_factor');
  ma_spatializer_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_heap_size');
  ma_spatializer_get_input_channels := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_input_channels');
  ma_spatializer_get_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_max_distance');
  ma_spatializer_get_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_max_gain');
  ma_spatializer_get_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_min_distance');
  ma_spatializer_get_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_min_gain');
  ma_spatializer_get_output_channels := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_output_channels');
  ma_spatializer_get_position := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_position');
  ma_spatializer_get_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_positioning');
  ma_spatializer_get_relative_position_and_direction := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_relative_position_and_direction');
  ma_spatializer_get_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_rolloff');
  ma_spatializer_get_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_get_velocity');
  ma_spatializer_init := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_init');
  ma_spatializer_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_init_preallocated');
  ma_spatializer_listener_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_config_init');
  ma_spatializer_listener_get_channel_map := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_channel_map');
  ma_spatializer_listener_get_cone := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_cone');
  ma_spatializer_listener_get_direction := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_direction');
  ma_spatializer_listener_get_heap_size := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_heap_size');
  ma_spatializer_listener_get_position := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_position');
  ma_spatializer_listener_get_speed_of_sound := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_speed_of_sound');
  ma_spatializer_listener_get_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_velocity');
  ma_spatializer_listener_get_world_up := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_get_world_up');
  ma_spatializer_listener_init := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_init');
  ma_spatializer_listener_init_preallocated := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_init_preallocated');
  ma_spatializer_listener_is_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_is_enabled');
  ma_spatializer_listener_set_cone := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_cone');
  ma_spatializer_listener_set_direction := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_direction');
  ma_spatializer_listener_set_enabled := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_enabled');
  ma_spatializer_listener_set_position := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_position');
  ma_spatializer_listener_set_speed_of_sound := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_speed_of_sound');
  ma_spatializer_listener_set_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_velocity');
  ma_spatializer_listener_set_world_up := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_set_world_up');
  ma_spatializer_listener_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_listener_uninit');
  ma_spatializer_process_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_process_pcm_frames');
  ma_spatializer_set_attenuation_model := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_attenuation_model');
  ma_spatializer_set_cone := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_cone');
  ma_spatializer_set_direction := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_direction');
  ma_spatializer_set_directional_attenuation_factor := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_directional_attenuation_factor');
  ma_spatializer_set_doppler_factor := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_doppler_factor');
  ma_spatializer_set_max_distance := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_max_distance');
  ma_spatializer_set_max_gain := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_max_gain');
  ma_spatializer_set_min_distance := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_min_distance');
  ma_spatializer_set_min_gain := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_min_gain');
  ma_spatializer_set_position := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_position');
  ma_spatializer_set_positioning := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_positioning');
  ma_spatializer_set_rolloff := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_rolloff');
  ma_spatializer_set_velocity := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_set_velocity');
  ma_spatializer_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_spatializer_uninit');
  ma_spinlock_lock := MemoryGetProcAddress(aDLLHandle, 'ma_spinlock_lock');
  ma_spinlock_lock_noyield := MemoryGetProcAddress(aDLLHandle, 'ma_spinlock_lock_noyield');
  ma_spinlock_unlock := MemoryGetProcAddress(aDLLHandle, 'ma_spinlock_unlock');
  ma_splitter_node_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_splitter_node_config_init');
  ma_splitter_node_init := MemoryGetProcAddress(aDLLHandle, 'ma_splitter_node_init');
  ma_splitter_node_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_splitter_node_uninit');
  ma_version := MemoryGetProcAddress(aDLLHandle, 'ma_version');
  ma_version_string := MemoryGetProcAddress(aDLLHandle, 'ma_version_string');
  ma_vfs_close := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_close');
  ma_vfs_info := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_info');
  ma_vfs_open := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_open');
  ma_vfs_open_and_read_file := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_open_and_read_file');
  ma_vfs_open_w := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_open_w');
  ma_vfs_read := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_read');
  ma_vfs_seek := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_seek');
  ma_vfs_tell := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_tell');
  ma_vfs_write := MemoryGetProcAddress(aDLLHandle, 'ma_vfs_write');
  ma_volume_db_to_linear := MemoryGetProcAddress(aDLLHandle, 'ma_volume_db_to_linear');
  ma_volume_linear_to_db := MemoryGetProcAddress(aDLLHandle, 'ma_volume_linear_to_db');
  ma_waveform_config_init := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_config_init');
  ma_waveform_init := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_init');
  ma_waveform_read_pcm_frames := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_read_pcm_frames');
  ma_waveform_seek_to_pcm_frame := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_seek_to_pcm_frame');
  ma_waveform_set_amplitude := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_set_amplitude');
  ma_waveform_set_frequency := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_set_frequency');
  ma_waveform_set_sample_rate := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_set_sample_rate');
  ma_waveform_set_type := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_set_type');
  ma_waveform_uninit := MemoryGetProcAddress(aDLLHandle, 'ma_waveform_uninit');
  NBN_GameClient_AddTime := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_AddTime');
  NBN_GameClient_CallRPC := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_CallRPC');
  NBN_GameClient_CreateByteArrayMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_CreateByteArrayMessage');
  NBN_GameClient_CreateMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_CreateMessage');
  NBN_GameClient_CreateServerConnection := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_CreateServerConnection');
  NBN_GameClient_Disconnect := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_Disconnect');
  NBN_GameClient_GetAcceptDataReadStream := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_GetAcceptDataReadStream');
  NBN_GameClient_GetContext := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_GetContext');
  NBN_GameClient_GetMessageInfo := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_GetMessageInfo');
  NBN_GameClient_GetServerCloseCode := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_GetServerCloseCode');
  NBN_GameClient_GetStats := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_GetStats');
  NBN_GameClient_IsConnected := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_IsConnected');
  NBN_GameClient_IsEncryptionEnabled := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_IsEncryptionEnabled');
  NBN_GameClient_Poll := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_Poll');
  NBN_GameClient_RegisterChannel := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_RegisterChannel');
  NBN_GameClient_RegisterMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_RegisterMessage');
  NBN_GameClient_RegisterRPC := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_RegisterRPC');
  NBN_GameClient_SendMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_SendMessage');
  NBN_GameClient_SendPackets := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_SendPackets');
  NBN_GameClient_SendReliableMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_SendReliableMessage');
  NBN_GameClient_SendUnreliableMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_SendUnreliableMessage');
  NBN_GameClient_SetContext := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_SetContext');
  NBN_GameClient_Start := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_Start');
  NBN_GameClient_Stop := MemoryGetProcAddress(aDLLHandle, 'NBN_GameClient_Stop');
  NBN_GameServer_AcceptIncomingConnection := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_AcceptIncomingConnection');
  NBN_GameServer_AddTime := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_AddTime');
  NBN_GameServer_BroadcastMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_BroadcastMessage');
  NBN_GameServer_BroadcastReliableMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_BroadcastReliableMessage');
  NBN_GameServer_BroadcastUnreliableMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_BroadcastUnreliableMessage');
  NBN_GameServer_CallRPC := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CallRPC');
  NBN_GameServer_CloseClient := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CloseClient');
  NBN_GameServer_CloseClientWithCode := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CloseClientWithCode');
  NBN_GameServer_CreateByteArrayMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CreateByteArrayMessage');
  NBN_GameServer_CreateClientConnection := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CreateClientConnection');
  NBN_GameServer_CreateMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_CreateMessage');
  NBN_GameServer_GetConnectionAcceptDataWriteStream := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetConnectionAcceptDataWriteStream');
  NBN_GameServer_GetConnectionData := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetConnectionData');
  NBN_GameServer_GetContext := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetContext');
  NBN_GameServer_GetDisconnectedClient := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetDisconnectedClient');
  NBN_GameServer_GetIncomingConnection := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetIncomingConnection');
  NBN_GameServer_GetMessageInfo := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetMessageInfo');
  NBN_GameServer_GetStats := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_GetStats');
  NBN_GameServer_IsEncryptionEnabled := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_IsEncryptionEnabled');
  NBN_GameServer_Poll := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_Poll');
  NBN_GameServer_RegisterChannel := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_RegisterChannel');
  NBN_GameServer_RegisterMessage := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_RegisterMessage');
  NBN_GameServer_RegisterRPC := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_RegisterRPC');
  NBN_GameServer_RejectIncomingConnection := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_RejectIncomingConnection');
  NBN_GameServer_RejectIncomingConnectionWithCode := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_RejectIncomingConnectionWithCode');
  NBN_GameServer_SendMessageTo := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_SendMessageTo');
  NBN_GameServer_SendPackets := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_SendPackets');
  NBN_GameServer_SendReliableMessageTo := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_SendReliableMessageTo');
  NBN_GameServer_SendUnreliableMessageTo := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_SendUnreliableMessageTo');
  NBN_GameServer_SetContext := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_SetContext');
  NBN_GameServer_Start := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_Start');
  NBN_GameServer_Stop := MemoryGetProcAddress(aDLLHandle, 'NBN_GameServer_Stop');
  nk__begin := MemoryGetProcAddress(aDLLHandle, 'nk__begin');
  nk__draw_begin := MemoryGetProcAddress(aDLLHandle, 'nk__draw_begin');
  nk__draw_end := MemoryGetProcAddress(aDLLHandle, 'nk__draw_end');
  nk__draw_list_begin := MemoryGetProcAddress(aDLLHandle, 'nk__draw_list_begin');
  nk__draw_list_end := MemoryGetProcAddress(aDLLHandle, 'nk__draw_list_end');
  nk__draw_list_next := MemoryGetProcAddress(aDLLHandle, 'nk__draw_list_next');
  nk__draw_next := MemoryGetProcAddress(aDLLHandle, 'nk__draw_next');
  nk__next := MemoryGetProcAddress(aDLLHandle, 'nk__next');
  nk_begin := MemoryGetProcAddress(aDLLHandle, 'nk_begin');
  nk_begin_titled := MemoryGetProcAddress(aDLLHandle, 'nk_begin_titled');
  nk_buffer_clear := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_clear');
  nk_buffer_free := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_free');
  nk_buffer_info := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_info');
  nk_buffer_init := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_init');
  nk_buffer_init_default := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_init_default');
  nk_buffer_init_fixed := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_init_fixed');
  nk_buffer_mark := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_mark');
  nk_buffer_memory := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_memory');
  nk_buffer_memory_const := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_memory_const');
  nk_buffer_push := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_push');
  nk_buffer_reset := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_reset');
  nk_buffer_total := MemoryGetProcAddress(aDLLHandle, 'nk_buffer_total');
  nk_button_color := MemoryGetProcAddress(aDLLHandle, 'nk_button_color');
  nk_button_image := MemoryGetProcAddress(aDLLHandle, 'nk_button_image');
  nk_button_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_button_image_label');
  nk_button_image_label_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_image_label_styled');
  nk_button_image_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_image_styled');
  nk_button_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_button_image_text');
  nk_button_image_text_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_image_text_styled');
  nk_button_label := MemoryGetProcAddress(aDLLHandle, 'nk_button_label');
  nk_button_label_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_label_styled');
  nk_button_pop_behavior := MemoryGetProcAddress(aDLLHandle, 'nk_button_pop_behavior');
  nk_button_push_behavior := MemoryGetProcAddress(aDLLHandle, 'nk_button_push_behavior');
  nk_button_set_behavior := MemoryGetProcAddress(aDLLHandle, 'nk_button_set_behavior');
  nk_button_symbol := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol');
  nk_button_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol_label');
  nk_button_symbol_label_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol_label_styled');
  nk_button_symbol_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol_styled');
  nk_button_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol_text');
  nk_button_symbol_text_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_symbol_text_styled');
  nk_button_text := MemoryGetProcAddress(aDLLHandle, 'nk_button_text');
  nk_button_text_styled := MemoryGetProcAddress(aDLLHandle, 'nk_button_text_styled');
  nk_chart_add_slot := MemoryGetProcAddress(aDLLHandle, 'nk_chart_add_slot');
  nk_chart_add_slot_colored := MemoryGetProcAddress(aDLLHandle, 'nk_chart_add_slot_colored');
  nk_chart_begin := MemoryGetProcAddress(aDLLHandle, 'nk_chart_begin');
  nk_chart_begin_colored := MemoryGetProcAddress(aDLLHandle, 'nk_chart_begin_colored');
  nk_chart_end := MemoryGetProcAddress(aDLLHandle, 'nk_chart_end');
  nk_chart_push := MemoryGetProcAddress(aDLLHandle, 'nk_chart_push');
  nk_chart_push_slot := MemoryGetProcAddress(aDLLHandle, 'nk_chart_push_slot');
  nk_check_flags_label := MemoryGetProcAddress(aDLLHandle, 'nk_check_flags_label');
  nk_check_flags_text := MemoryGetProcAddress(aDLLHandle, 'nk_check_flags_text');
  nk_check_label := MemoryGetProcAddress(aDLLHandle, 'nk_check_label');
  nk_check_text := MemoryGetProcAddress(aDLLHandle, 'nk_check_text');
  nk_checkbox_flags_label := MemoryGetProcAddress(aDLLHandle, 'nk_checkbox_flags_label');
  nk_checkbox_flags_text := MemoryGetProcAddress(aDLLHandle, 'nk_checkbox_flags_text');
  nk_checkbox_label := MemoryGetProcAddress(aDLLHandle, 'nk_checkbox_label');
  nk_checkbox_text := MemoryGetProcAddress(aDLLHandle, 'nk_checkbox_text');
  nk_clear := MemoryGetProcAddress(aDLLHandle, 'nk_clear');
  nk_color_cf := MemoryGetProcAddress(aDLLHandle, 'nk_color_cf');
  nk_color_d := MemoryGetProcAddress(aDLLHandle, 'nk_color_d');
  nk_color_dv := MemoryGetProcAddress(aDLLHandle, 'nk_color_dv');
  nk_color_f := MemoryGetProcAddress(aDLLHandle, 'nk_color_f');
  nk_color_fv := MemoryGetProcAddress(aDLLHandle, 'nk_color_fv');
  nk_color_hex_rgb := MemoryGetProcAddress(aDLLHandle, 'nk_color_hex_rgb');
  nk_color_hex_rgba := MemoryGetProcAddress(aDLLHandle, 'nk_color_hex_rgba');
  nk_color_hsv_b := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_b');
  nk_color_hsv_bv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_bv');
  nk_color_hsv_f := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_f');
  nk_color_hsv_fv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_fv');
  nk_color_hsv_i := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_i');
  nk_color_hsv_iv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsv_iv');
  nk_color_hsva_b := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_b');
  nk_color_hsva_bv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_bv');
  nk_color_hsva_f := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_f');
  nk_color_hsva_fv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_fv');
  nk_color_hsva_i := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_i');
  nk_color_hsva_iv := MemoryGetProcAddress(aDLLHandle, 'nk_color_hsva_iv');
  nk_color_pick := MemoryGetProcAddress(aDLLHandle, 'nk_color_pick');
  nk_color_picker := MemoryGetProcAddress(aDLLHandle, 'nk_color_picker');
  nk_color_u32 := MemoryGetProcAddress(aDLLHandle, 'nk_color_u32');
  nk_colorf_hsva_f := MemoryGetProcAddress(aDLLHandle, 'nk_colorf_hsva_f');
  nk_colorf_hsva_fv := MemoryGetProcAddress(aDLLHandle, 'nk_colorf_hsva_fv');
  nk_combo := MemoryGetProcAddress(aDLLHandle, 'nk_combo');
  nk_combo_begin_color := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_color');
  nk_combo_begin_image := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_image');
  nk_combo_begin_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_image_label');
  nk_combo_begin_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_image_text');
  nk_combo_begin_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_label');
  nk_combo_begin_symbol := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_symbol');
  nk_combo_begin_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_symbol_label');
  nk_combo_begin_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_symbol_text');
  nk_combo_begin_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_begin_text');
  nk_combo_callback := MemoryGetProcAddress(aDLLHandle, 'nk_combo_callback');
  nk_combo_close := MemoryGetProcAddress(aDLLHandle, 'nk_combo_close');
  nk_combo_end := MemoryGetProcAddress(aDLLHandle, 'nk_combo_end');
  nk_combo_item_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_image_label');
  nk_combo_item_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_image_text');
  nk_combo_item_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_label');
  nk_combo_item_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_symbol_label');
  nk_combo_item_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_symbol_text');
  nk_combo_item_text := MemoryGetProcAddress(aDLLHandle, 'nk_combo_item_text');
  nk_combo_separator := MemoryGetProcAddress(aDLLHandle, 'nk_combo_separator');
  nk_combo_string := MemoryGetProcAddress(aDLLHandle, 'nk_combo_string');
  nk_combobox := MemoryGetProcAddress(aDLLHandle, 'nk_combobox');
  nk_combobox_callback := MemoryGetProcAddress(aDLLHandle, 'nk_combobox_callback');
  nk_combobox_separator := MemoryGetProcAddress(aDLLHandle, 'nk_combobox_separator');
  nk_combobox_string := MemoryGetProcAddress(aDLLHandle, 'nk_combobox_string');
  nk_contextual_begin := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_begin');
  nk_contextual_close := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_close');
  nk_contextual_end := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_end');
  nk_contextual_item_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_image_label');
  nk_contextual_item_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_image_text');
  nk_contextual_item_label := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_label');
  nk_contextual_item_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_symbol_label');
  nk_contextual_item_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_symbol_text');
  nk_contextual_item_text := MemoryGetProcAddress(aDLLHandle, 'nk_contextual_item_text');
  nk_convert := MemoryGetProcAddress(aDLLHandle, 'nk_convert');
  nk_draw_image := MemoryGetProcAddress(aDLLHandle, 'nk_draw_image');
  nk_draw_list_add_image := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_add_image');
  nk_draw_list_add_text := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_add_text');
  nk_draw_list_fill_circle := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_fill_circle');
  nk_draw_list_fill_poly_convex := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_fill_poly_convex');
  nk_draw_list_fill_rect := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_fill_rect');
  nk_draw_list_fill_rect_multi_color := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_fill_rect_multi_color');
  nk_draw_list_fill_triangle := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_fill_triangle');
  nk_draw_list_init := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_init');
  nk_draw_list_path_arc_to := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_arc_to');
  nk_draw_list_path_arc_to_fast := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_arc_to_fast');
  nk_draw_list_path_clear := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_clear');
  nk_draw_list_path_curve_to := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_curve_to');
  nk_draw_list_path_fill := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_fill');
  nk_draw_list_path_line_to := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_line_to');
  nk_draw_list_path_rect_to := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_rect_to');
  nk_draw_list_path_stroke := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_path_stroke');
  nk_draw_list_setup := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_setup');
  nk_draw_list_stroke_circle := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_circle');
  nk_draw_list_stroke_curve := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_curve');
  nk_draw_list_stroke_line := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_line');
  nk_draw_list_stroke_poly_line := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_poly_line');
  nk_draw_list_stroke_rect := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_rect');
  nk_draw_list_stroke_triangle := MemoryGetProcAddress(aDLLHandle, 'nk_draw_list_stroke_triangle');
  nk_draw_nine_slice := MemoryGetProcAddress(aDLLHandle, 'nk_draw_nine_slice');
  nk_draw_text := MemoryGetProcAddress(aDLLHandle, 'nk_draw_text');
  nk_edit_buffer := MemoryGetProcAddress(aDLLHandle, 'nk_edit_buffer');
  nk_edit_focus := MemoryGetProcAddress(aDLLHandle, 'nk_edit_focus');
  nk_edit_string := MemoryGetProcAddress(aDLLHandle, 'nk_edit_string');
  nk_edit_string_zero_terminated := MemoryGetProcAddress(aDLLHandle, 'nk_edit_string_zero_terminated');
  nk_edit_unfocus := MemoryGetProcAddress(aDLLHandle, 'nk_edit_unfocus');
  nk_end := MemoryGetProcAddress(aDLLHandle, 'nk_end');
  nk_fill_arc := MemoryGetProcAddress(aDLLHandle, 'nk_fill_arc');
  nk_fill_circle := MemoryGetProcAddress(aDLLHandle, 'nk_fill_circle');
  nk_fill_polygon := MemoryGetProcAddress(aDLLHandle, 'nk_fill_polygon');
  nk_fill_rect := MemoryGetProcAddress(aDLLHandle, 'nk_fill_rect');
  nk_fill_rect_multi_color := MemoryGetProcAddress(aDLLHandle, 'nk_fill_rect_multi_color');
  nk_fill_triangle := MemoryGetProcAddress(aDLLHandle, 'nk_fill_triangle');
  nk_filter_ascii := MemoryGetProcAddress(aDLLHandle, 'nk_filter_ascii');
  nk_filter_binary := MemoryGetProcAddress(aDLLHandle, 'nk_filter_binary');
  nk_filter_decimal := MemoryGetProcAddress(aDLLHandle, 'nk_filter_decimal');
  nk_filter_default := MemoryGetProcAddress(aDLLHandle, 'nk_filter_default');
  nk_filter_float := MemoryGetProcAddress(aDLLHandle, 'nk_filter_float');
  nk_filter_hex := MemoryGetProcAddress(aDLLHandle, 'nk_filter_hex');
  nk_filter_oct := MemoryGetProcAddress(aDLLHandle, 'nk_filter_oct');
  nk_font_atlas_add := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add');
  nk_font_atlas_add_compressed := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add_compressed');
  nk_font_atlas_add_compressed_base85 := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add_compressed_base85');
  nk_font_atlas_add_default := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add_default');
  nk_font_atlas_add_from_file := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add_from_file');
  nk_font_atlas_add_from_memory := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_add_from_memory');
  nk_font_atlas_bake := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_bake');
  nk_font_atlas_begin := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_begin');
  nk_font_atlas_cleanup := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_cleanup');
  nk_font_atlas_clear := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_clear');
  nk_font_atlas_end := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_end');
  nk_font_atlas_init := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_init');
  nk_font_atlas_init_custom := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_init_custom');
  nk_font_atlas_init_default := MemoryGetProcAddress(aDLLHandle, 'nk_font_atlas_init_default');
  nk_font_chinese_glyph_ranges := MemoryGetProcAddress(aDLLHandle, 'nk_font_chinese_glyph_ranges');
  nk_font_config_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_font_config');
  nk_font_cyrillic_glyph_ranges := MemoryGetProcAddress(aDLLHandle, 'nk_font_cyrillic_glyph_ranges');
  nk_font_default_glyph_ranges := MemoryGetProcAddress(aDLLHandle, 'nk_font_default_glyph_ranges');
  nk_font_find_glyph := MemoryGetProcAddress(aDLLHandle, 'nk_font_find_glyph');
  nk_font_korean_glyph_ranges := MemoryGetProcAddress(aDLLHandle, 'nk_font_korean_glyph_ranges');
  nk_free := MemoryGetProcAddress(aDLLHandle, 'nk_free');
  nk_get_null_rect := MemoryGetProcAddress(aDLLHandle, 'nk_get_null_rect');
  nk_group_begin := MemoryGetProcAddress(aDLLHandle, 'nk_group_begin');
  nk_group_begin_titled := MemoryGetProcAddress(aDLLHandle, 'nk_group_begin_titled');
  nk_group_end := MemoryGetProcAddress(aDLLHandle, 'nk_group_end');
  nk_group_get_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_group_get_scroll');
  nk_group_scrolled_begin := MemoryGetProcAddress(aDLLHandle, 'nk_group_scrolled_begin');
  nk_group_scrolled_end := MemoryGetProcAddress(aDLLHandle, 'nk_group_scrolled_end');
  nk_group_scrolled_offset_begin := MemoryGetProcAddress(aDLLHandle, 'nk_group_scrolled_offset_begin');
  nk_group_set_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_group_set_scroll');
  nk_handle_id := MemoryGetProcAddress(aDLLHandle, 'nk_handle_id');
  nk_handle_ptr := MemoryGetProcAddress(aDLLHandle, 'nk_handle_ptr');
  nk_hsv := MemoryGetProcAddress(aDLLHandle, 'nk_hsv');
  nk_hsv_bv := MemoryGetProcAddress(aDLLHandle, 'nk_hsv_bv');
  nk_hsv_f := MemoryGetProcAddress(aDLLHandle, 'nk_hsv_f');
  nk_hsv_fv := MemoryGetProcAddress(aDLLHandle, 'nk_hsv_fv');
  nk_hsv_iv := MemoryGetProcAddress(aDLLHandle, 'nk_hsv_iv');
  nk_hsva := MemoryGetProcAddress(aDLLHandle, 'nk_hsva');
  nk_hsva_bv := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_bv');
  nk_hsva_colorf := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_colorf');
  nk_hsva_colorfv := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_colorfv');
  nk_hsva_f := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_f');
  nk_hsva_fv := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_fv');
  nk_hsva_iv := MemoryGetProcAddress(aDLLHandle, 'nk_hsva_iv');
  nk_image_color := MemoryGetProcAddress(aDLLHandle, 'nk_image_color');
  nk_image_handle := MemoryGetProcAddress(aDLLHandle, 'nk_image_handle');
  nk_image_id := MemoryGetProcAddress(aDLLHandle, 'nk_image_id');
  nk_image_is_subimage := MemoryGetProcAddress(aDLLHandle, 'nk_image_is_subimage');
  nk_image_ptr := MemoryGetProcAddress(aDLLHandle, 'nk_image_ptr');
  nk_image_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_image');
  nk_init := MemoryGetProcAddress(aDLLHandle, 'nk_init');
  nk_init_custom := MemoryGetProcAddress(aDLLHandle, 'nk_init_custom');
  nk_init_default := MemoryGetProcAddress(aDLLHandle, 'nk_init_default');
  nk_init_fixed := MemoryGetProcAddress(aDLLHandle, 'nk_init_fixed');
  nk_input_any_mouse_click_in_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_any_mouse_click_in_rect');
  nk_input_begin := MemoryGetProcAddress(aDLLHandle, 'nk_input_begin');
  nk_input_button := MemoryGetProcAddress(aDLLHandle, 'nk_input_button');
  nk_input_char := MemoryGetProcAddress(aDLLHandle, 'nk_input_char');
  nk_input_end := MemoryGetProcAddress(aDLLHandle, 'nk_input_end');
  nk_input_glyph := MemoryGetProcAddress(aDLLHandle, 'nk_input_glyph');
  nk_input_has_mouse_click := MemoryGetProcAddress(aDLLHandle, 'nk_input_has_mouse_click');
  nk_input_has_mouse_click_down_in_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_has_mouse_click_down_in_rect');
  nk_input_has_mouse_click_in_button_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_has_mouse_click_in_button_rect');
  nk_input_has_mouse_click_in_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_has_mouse_click_in_rect');
  nk_input_is_key_down := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_key_down');
  nk_input_is_key_pressed := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_key_pressed');
  nk_input_is_key_released := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_key_released');
  nk_input_is_mouse_click_down_in_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_click_down_in_rect');
  nk_input_is_mouse_click_in_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_click_in_rect');
  nk_input_is_mouse_down := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_down');
  nk_input_is_mouse_hovering_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_hovering_rect');
  nk_input_is_mouse_pressed := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_pressed');
  nk_input_is_mouse_prev_hovering_rect := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_prev_hovering_rect');
  nk_input_is_mouse_released := MemoryGetProcAddress(aDLLHandle, 'nk_input_is_mouse_released');
  nk_input_key := MemoryGetProcAddress(aDLLHandle, 'nk_input_key');
  nk_input_motion := MemoryGetProcAddress(aDLLHandle, 'nk_input_motion');
  nk_input_mouse_clicked := MemoryGetProcAddress(aDLLHandle, 'nk_input_mouse_clicked');
  nk_input_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_input_scroll');
  nk_input_unicode := MemoryGetProcAddress(aDLLHandle, 'nk_input_unicode');
  nk_item_is_any_active := MemoryGetProcAddress(aDLLHandle, 'nk_item_is_any_active');
  nk_label := MemoryGetProcAddress(aDLLHandle, 'nk_label');
  nk_label_colored := MemoryGetProcAddress(aDLLHandle, 'nk_label_colored');
  nk_label_colored_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_label_colored_wrap');
  nk_label_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_label_wrap');
  nk_labelf := MemoryGetProcAddress(aDLLHandle, 'nk_labelf');
  nk_labelf_colored := MemoryGetProcAddress(aDLLHandle, 'nk_labelf_colored');
  nk_labelf_colored_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_labelf_colored_wrap');
  nk_labelf_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_labelf_wrap');
  nk_labelfv := MemoryGetProcAddress(aDLLHandle, 'nk_labelfv');
  nk_labelfv_colored := MemoryGetProcAddress(aDLLHandle, 'nk_labelfv_colored');
  nk_labelfv_colored_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_labelfv_colored_wrap');
  nk_labelfv_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_labelfv_wrap');
  nk_layout_ratio_from_pixel := MemoryGetProcAddress(aDLLHandle, 'nk_layout_ratio_from_pixel');
  nk_layout_reset_min_row_height := MemoryGetProcAddress(aDLLHandle, 'nk_layout_reset_min_row_height');
  nk_layout_row := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row');
  nk_layout_row_begin := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_begin');
  nk_layout_row_dynamic := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_dynamic');
  nk_layout_row_end := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_end');
  nk_layout_row_push := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_push');
  nk_layout_row_static := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_static');
  nk_layout_row_template_begin := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_template_begin');
  nk_layout_row_template_end := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_template_end');
  nk_layout_row_template_push_dynamic := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_template_push_dynamic');
  nk_layout_row_template_push_static := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_template_push_static');
  nk_layout_row_template_push_variable := MemoryGetProcAddress(aDLLHandle, 'nk_layout_row_template_push_variable');
  nk_layout_set_min_row_height := MemoryGetProcAddress(aDLLHandle, 'nk_layout_set_min_row_height');
  nk_layout_space_begin := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_begin');
  nk_layout_space_bounds := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_bounds');
  nk_layout_space_end := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_end');
  nk_layout_space_push := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_push');
  nk_layout_space_rect_to_local := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_rect_to_local');
  nk_layout_space_rect_to_screen := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_rect_to_screen');
  nk_layout_space_to_local := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_to_local');
  nk_layout_space_to_screen := MemoryGetProcAddress(aDLLHandle, 'nk_layout_space_to_screen');
  nk_layout_widget_bounds := MemoryGetProcAddress(aDLLHandle, 'nk_layout_widget_bounds');
  nk_list_view_begin := MemoryGetProcAddress(aDLLHandle, 'nk_list_view_begin');
  nk_list_view_end := MemoryGetProcAddress(aDLLHandle, 'nk_list_view_end');
  nk_menu_begin_image := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_image');
  nk_menu_begin_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_image_label');
  nk_menu_begin_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_image_text');
  nk_menu_begin_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_label');
  nk_menu_begin_symbol := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_symbol');
  nk_menu_begin_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_symbol_label');
  nk_menu_begin_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_symbol_text');
  nk_menu_begin_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_begin_text');
  nk_menu_close := MemoryGetProcAddress(aDLLHandle, 'nk_menu_close');
  nk_menu_end := MemoryGetProcAddress(aDLLHandle, 'nk_menu_end');
  nk_menu_item_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_image_label');
  nk_menu_item_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_image_text');
  nk_menu_item_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_label');
  nk_menu_item_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_symbol_label');
  nk_menu_item_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_symbol_text');
  nk_menu_item_text := MemoryGetProcAddress(aDLLHandle, 'nk_menu_item_text');
  nk_menubar_begin := MemoryGetProcAddress(aDLLHandle, 'nk_menubar_begin');
  nk_menubar_end := MemoryGetProcAddress(aDLLHandle, 'nk_menubar_end');
  nk_murmur_hash := MemoryGetProcAddress(aDLLHandle, 'nk_murmur_hash');
  nk_nine_slice_handle := MemoryGetProcAddress(aDLLHandle, 'nk_nine_slice_handle');
  nk_nine_slice_id := MemoryGetProcAddress(aDLLHandle, 'nk_nine_slice_id');
  nk_nine_slice_is_sub9slice := MemoryGetProcAddress(aDLLHandle, 'nk_nine_slice_is_sub9slice');
  nk_nine_slice_ptr := MemoryGetProcAddress(aDLLHandle, 'nk_nine_slice_ptr');
  nk_option_label := MemoryGetProcAddress(aDLLHandle, 'nk_option_label');
  nk_option_text := MemoryGetProcAddress(aDLLHandle, 'nk_option_text');
  nk_plot := MemoryGetProcAddress(aDLLHandle, 'nk_plot');
  nk_plot_function := MemoryGetProcAddress(aDLLHandle, 'nk_plot_function');
  nk_popup_begin := MemoryGetProcAddress(aDLLHandle, 'nk_popup_begin');
  nk_popup_close := MemoryGetProcAddress(aDLLHandle, 'nk_popup_close');
  nk_popup_end := MemoryGetProcAddress(aDLLHandle, 'nk_popup_end');
  nk_popup_get_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_popup_get_scroll');
  nk_popup_set_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_popup_set_scroll');
  nk_prog := MemoryGetProcAddress(aDLLHandle, 'nk_prog');
  nk_progress := MemoryGetProcAddress(aDLLHandle, 'nk_progress');
  nk_property_double := MemoryGetProcAddress(aDLLHandle, 'nk_property_double');
  nk_property_float := MemoryGetProcAddress(aDLLHandle, 'nk_property_float');
  nk_property_int := MemoryGetProcAddress(aDLLHandle, 'nk_property_int');
  nk_propertyd := MemoryGetProcAddress(aDLLHandle, 'nk_propertyd');
  nk_propertyf := MemoryGetProcAddress(aDLLHandle, 'nk_propertyf');
  nk_propertyi := MemoryGetProcAddress(aDLLHandle, 'nk_propertyi');
  nk_push_custom := MemoryGetProcAddress(aDLLHandle, 'nk_push_custom');
  nk_push_scissor := MemoryGetProcAddress(aDLLHandle, 'nk_push_scissor');
  nk_radio_label := MemoryGetProcAddress(aDLLHandle, 'nk_radio_label');
  nk_radio_text := MemoryGetProcAddress(aDLLHandle, 'nk_radio_text');
  nk_rect_pos := MemoryGetProcAddress(aDLLHandle, 'nk_rect_pos');
  nk_rect_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_rect');
  nk_rect_size := MemoryGetProcAddress(aDLLHandle, 'nk_rect_size');
  nk_recta := MemoryGetProcAddress(aDLLHandle, 'nk_recta');
  nk_recti_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_recti');
  nk_rectiv := MemoryGetProcAddress(aDLLHandle, 'nk_rectiv');
  nk_rectv := MemoryGetProcAddress(aDLLHandle, 'nk_rectv');
  nk_rgb_bv := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_bv');
  nk_rgb_cf := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_cf');
  nk_rgb_f := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_f');
  nk_rgb_fv := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_fv');
  nk_rgb_hex := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_hex');
  nk_rgb_iv := MemoryGetProcAddress(aDLLHandle, 'nk_rgb_iv');
  nk_rgb_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_rgb');
  nk_rgba_bv := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_bv');
  nk_rgba_cf := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_cf');
  nk_rgba_f := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_f');
  nk_rgba_fv := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_fv');
  nk_rgba_hex := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_hex');
  nk_rgba_iv := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_iv');
  nk_rgba_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_rgba');
  nk_rgba_u32 := MemoryGetProcAddress(aDLLHandle, 'nk_rgba_u32');
  nk_sdl_font_stash_begin := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_font_stash_begin');
  nk_sdl_font_stash_end := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_font_stash_end');
  nk_sdl_handle_event := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_handle_event');
  nk_sdl_init := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_init');
  nk_sdl_render := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_render');
  nk_sdl_shutdown := MemoryGetProcAddress(aDLLHandle, 'nk_sdl_shutdown');
  nk_select_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_select_image_label');
  nk_select_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_select_image_text');
  nk_select_label := MemoryGetProcAddress(aDLLHandle, 'nk_select_label');
  nk_select_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_select_symbol_label');
  nk_select_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_select_symbol_text');
  nk_select_text := MemoryGetProcAddress(aDLLHandle, 'nk_select_text');
  nk_selectable_image_label := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_image_label');
  nk_selectable_image_text := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_image_text');
  nk_selectable_label := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_label');
  nk_selectable_symbol_label := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_symbol_label');
  nk_selectable_symbol_text := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_symbol_text');
  nk_selectable_text := MemoryGetProcAddress(aDLLHandle, 'nk_selectable_text');
  nk_slide_float := MemoryGetProcAddress(aDLLHandle, 'nk_slide_float');
  nk_slide_int := MemoryGetProcAddress(aDLLHandle, 'nk_slide_int');
  nk_slider_float := MemoryGetProcAddress(aDLLHandle, 'nk_slider_float');
  nk_slider_int := MemoryGetProcAddress(aDLLHandle, 'nk_slider_int');
  nk_spacer := MemoryGetProcAddress(aDLLHandle, 'nk_spacer');
  nk_spacing := MemoryGetProcAddress(aDLLHandle, 'nk_spacing');
  nk_str_append_str_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_str_char');
  nk_str_append_str_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_str_runes');
  nk_str_append_str_utf8 := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_str_utf8');
  nk_str_append_text_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_text_char');
  nk_str_append_text_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_text_runes');
  nk_str_append_text_utf8 := MemoryGetProcAddress(aDLLHandle, 'nk_str_append_text_utf8');
  nk_str_at_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_at_char');
  nk_str_at_char_const := MemoryGetProcAddress(aDLLHandle, 'nk_str_at_char_const');
  nk_str_at_const := MemoryGetProcAddress(aDLLHandle, 'nk_str_at_const');
  nk_str_at_rune := MemoryGetProcAddress(aDLLHandle, 'nk_str_at_rune');
  nk_str_clear := MemoryGetProcAddress(aDLLHandle, 'nk_str_clear');
  nk_str_delete_chars := MemoryGetProcAddress(aDLLHandle, 'nk_str_delete_chars');
  nk_str_delete_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_delete_runes');
  nk_str_free := MemoryGetProcAddress(aDLLHandle, 'nk_str_free');
  nk_str_get := MemoryGetProcAddress(aDLLHandle, 'nk_str_get');
  nk_str_get_const := MemoryGetProcAddress(aDLLHandle, 'nk_str_get_const');
  nk_str_init := MemoryGetProcAddress(aDLLHandle, 'nk_str_init');
  nk_str_init_default := MemoryGetProcAddress(aDLLHandle, 'nk_str_init_default');
  nk_str_init_fixed := MemoryGetProcAddress(aDLLHandle, 'nk_str_init_fixed');
  nk_str_insert_at_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_at_char');
  nk_str_insert_at_rune := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_at_rune');
  nk_str_insert_str_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_str_char');
  nk_str_insert_str_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_str_runes');
  nk_str_insert_str_utf8 := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_str_utf8');
  nk_str_insert_text_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_text_char');
  nk_str_insert_text_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_text_runes');
  nk_str_insert_text_utf8 := MemoryGetProcAddress(aDLLHandle, 'nk_str_insert_text_utf8');
  nk_str_len := MemoryGetProcAddress(aDLLHandle, 'nk_str_len');
  nk_str_len_char := MemoryGetProcAddress(aDLLHandle, 'nk_str_len_char');
  nk_str_remove_chars := MemoryGetProcAddress(aDLLHandle, 'nk_str_remove_chars');
  nk_str_remove_runes := MemoryGetProcAddress(aDLLHandle, 'nk_str_remove_runes');
  nk_str_rune_at := MemoryGetProcAddress(aDLLHandle, 'nk_str_rune_at');
  nk_strfilter := MemoryGetProcAddress(aDLLHandle, 'nk_strfilter');
  nk_stricmp := MemoryGetProcAddress(aDLLHandle, 'nk_stricmp');
  nk_stricmpn := MemoryGetProcAddress(aDLLHandle, 'nk_stricmpn');
  nk_strlen := MemoryGetProcAddress(aDLLHandle, 'nk_strlen');
  nk_strmatch_fuzzy_string := MemoryGetProcAddress(aDLLHandle, 'nk_strmatch_fuzzy_string');
  nk_strmatch_fuzzy_text := MemoryGetProcAddress(aDLLHandle, 'nk_strmatch_fuzzy_text');
  nk_stroke_arc := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_arc');
  nk_stroke_circle := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_circle');
  nk_stroke_curve := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_curve');
  nk_stroke_line := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_line');
  nk_stroke_polygon := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_polygon');
  nk_stroke_polyline := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_polyline');
  nk_stroke_rect := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_rect');
  nk_stroke_triangle := MemoryGetProcAddress(aDLLHandle, 'nk_stroke_triangle');
  nk_strtod := MemoryGetProcAddress(aDLLHandle, 'nk_strtod');
  nk_strtof := MemoryGetProcAddress(aDLLHandle, 'nk_strtof');
  nk_strtoi := MemoryGetProcAddress(aDLLHandle, 'nk_strtoi');
  nk_style_default := MemoryGetProcAddress(aDLLHandle, 'nk_style_default');
  nk_style_from_table := MemoryGetProcAddress(aDLLHandle, 'nk_style_from_table');
  nk_style_get_color_by_name := MemoryGetProcAddress(aDLLHandle, 'nk_style_get_color_by_name');
  nk_style_hide_cursor := MemoryGetProcAddress(aDLLHandle, 'nk_style_hide_cursor');
  nk_style_item_color_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_style_item_color');
  nk_style_item_hide := MemoryGetProcAddress(aDLLHandle, 'nk_style_item_hide');
  nk_style_item_image_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_style_item_image');
  nk_style_item_nine_slice_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_style_item_nine_slice');
  nk_style_load_all_cursors := MemoryGetProcAddress(aDLLHandle, 'nk_style_load_all_cursors');
  nk_style_load_cursor := MemoryGetProcAddress(aDLLHandle, 'nk_style_load_cursor');
  nk_style_pop_color := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_color');
  nk_style_pop_flags := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_flags');
  nk_style_pop_float := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_float');
  nk_style_pop_font := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_font');
  nk_style_pop_style_item := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_style_item');
  nk_style_pop_vec2 := MemoryGetProcAddress(aDLLHandle, 'nk_style_pop_vec2');
  nk_style_push_color := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_color');
  nk_style_push_flags := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_flags');
  nk_style_push_float := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_float');
  nk_style_push_font := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_font');
  nk_style_push_style_item := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_style_item');
  nk_style_push_vec2 := MemoryGetProcAddress(aDLLHandle, 'nk_style_push_vec2');
  nk_style_set_cursor := MemoryGetProcAddress(aDLLHandle, 'nk_style_set_cursor');
  nk_style_set_font := MemoryGetProcAddress(aDLLHandle, 'nk_style_set_font');
  nk_style_show_cursor := MemoryGetProcAddress(aDLLHandle, 'nk_style_show_cursor');
  nk_sub9slice_handle := MemoryGetProcAddress(aDLLHandle, 'nk_sub9slice_handle');
  nk_sub9slice_id := MemoryGetProcAddress(aDLLHandle, 'nk_sub9slice_id');
  nk_sub9slice_ptr := MemoryGetProcAddress(aDLLHandle, 'nk_sub9slice_ptr');
  nk_subimage_handle := MemoryGetProcAddress(aDLLHandle, 'nk_subimage_handle');
  nk_subimage_id := MemoryGetProcAddress(aDLLHandle, 'nk_subimage_id');
  nk_subimage_ptr := MemoryGetProcAddress(aDLLHandle, 'nk_subimage_ptr');
  nk_text := MemoryGetProcAddress(aDLLHandle, 'nk_text');
  nk_text_colored := MemoryGetProcAddress(aDLLHandle, 'nk_text_colored');
  nk_text_wrap := MemoryGetProcAddress(aDLLHandle, 'nk_text_wrap');
  nk_text_wrap_colored := MemoryGetProcAddress(aDLLHandle, 'nk_text_wrap_colored');
  nk_textedit_cut := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_cut');
  nk_textedit_delete := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_delete');
  nk_textedit_delete_selection := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_delete_selection');
  nk_textedit_free := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_free');
  nk_textedit_init := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_init');
  nk_textedit_init_default := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_init_default');
  nk_textedit_init_fixed := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_init_fixed');
  nk_textedit_paste := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_paste');
  nk_textedit_redo := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_redo');
  nk_textedit_select_all := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_select_all');
  nk_textedit_text := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_text');
  nk_textedit_undo := MemoryGetProcAddress(aDLLHandle, 'nk_textedit_undo');
  nk_tooltip := MemoryGetProcAddress(aDLLHandle, 'nk_tooltip');
  nk_tooltip_begin := MemoryGetProcAddress(aDLLHandle, 'nk_tooltip_begin');
  nk_tooltip_end := MemoryGetProcAddress(aDLLHandle, 'nk_tooltip_end');
  nk_tooltipf := MemoryGetProcAddress(aDLLHandle, 'nk_tooltipf');
  nk_tooltipfv := MemoryGetProcAddress(aDLLHandle, 'nk_tooltipfv');
  nk_tree_element_image_push_hashed := MemoryGetProcAddress(aDLLHandle, 'nk_tree_element_image_push_hashed');
  nk_tree_element_pop := MemoryGetProcAddress(aDLLHandle, 'nk_tree_element_pop');
  nk_tree_element_push_hashed := MemoryGetProcAddress(aDLLHandle, 'nk_tree_element_push_hashed');
  nk_tree_image_push_hashed := MemoryGetProcAddress(aDLLHandle, 'nk_tree_image_push_hashed');
  nk_tree_pop := MemoryGetProcAddress(aDLLHandle, 'nk_tree_pop');
  nk_tree_push_hashed := MemoryGetProcAddress(aDLLHandle, 'nk_tree_push_hashed');
  nk_tree_state_image_push := MemoryGetProcAddress(aDLLHandle, 'nk_tree_state_image_push');
  nk_tree_state_pop := MemoryGetProcAddress(aDLLHandle, 'nk_tree_state_pop');
  nk_tree_state_push := MemoryGetProcAddress(aDLLHandle, 'nk_tree_state_push');
  nk_triangle_from_direction := MemoryGetProcAddress(aDLLHandle, 'nk_triangle_from_direction');
  nk_utf_at := MemoryGetProcAddress(aDLLHandle, 'nk_utf_at');
  nk_utf_decode := MemoryGetProcAddress(aDLLHandle, 'nk_utf_decode');
  nk_utf_encode := MemoryGetProcAddress(aDLLHandle, 'nk_utf_encode');
  nk_utf_len := MemoryGetProcAddress(aDLLHandle, 'nk_utf_len');
  nk_value_bool := MemoryGetProcAddress(aDLLHandle, 'nk_value_bool');
  nk_value_color_byte := MemoryGetProcAddress(aDLLHandle, 'nk_value_color_byte');
  nk_value_color_float := MemoryGetProcAddress(aDLLHandle, 'nk_value_color_float');
  nk_value_color_hex := MemoryGetProcAddress(aDLLHandle, 'nk_value_color_hex');
  nk_value_float := MemoryGetProcAddress(aDLLHandle, 'nk_value_float');
  nk_value_int := MemoryGetProcAddress(aDLLHandle, 'nk_value_int');
  nk_value_uint := MemoryGetProcAddress(aDLLHandle, 'nk_value_uint');
  nk_vec2_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_vec2');
  nk_vec2i_rtn := MemoryGetProcAddress(aDLLHandle, 'nk_vec2i');
  nk_vec2iv := MemoryGetProcAddress(aDLLHandle, 'nk_vec2iv');
  nk_vec2v := MemoryGetProcAddress(aDLLHandle, 'nk_vec2v');
  nk_widget := MemoryGetProcAddress(aDLLHandle, 'nk_widget');
  nk_widget_bounds := MemoryGetProcAddress(aDLLHandle, 'nk_widget_bounds');
  nk_widget_fitting := MemoryGetProcAddress(aDLLHandle, 'nk_widget_fitting');
  nk_widget_has_mouse_click_down := MemoryGetProcAddress(aDLLHandle, 'nk_widget_has_mouse_click_down');
  nk_widget_height := MemoryGetProcAddress(aDLLHandle, 'nk_widget_height');
  nk_widget_is_hovered := MemoryGetProcAddress(aDLLHandle, 'nk_widget_is_hovered');
  nk_widget_is_mouse_clicked := MemoryGetProcAddress(aDLLHandle, 'nk_widget_is_mouse_clicked');
  nk_widget_position := MemoryGetProcAddress(aDLLHandle, 'nk_widget_position');
  nk_widget_size := MemoryGetProcAddress(aDLLHandle, 'nk_widget_size');
  nk_widget_width := MemoryGetProcAddress(aDLLHandle, 'nk_widget_width');
  nk_window_close := MemoryGetProcAddress(aDLLHandle, 'nk_window_close');
  nk_window_collapse := MemoryGetProcAddress(aDLLHandle, 'nk_window_collapse');
  nk_window_collapse_if := MemoryGetProcAddress(aDLLHandle, 'nk_window_collapse_if');
  nk_window_find := MemoryGetProcAddress(aDLLHandle, 'nk_window_find');
  nk_window_get_bounds := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_bounds');
  nk_window_get_canvas := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_canvas');
  nk_window_get_content_region := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_content_region');
  nk_window_get_content_region_max := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_content_region_max');
  nk_window_get_content_region_min := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_content_region_min');
  nk_window_get_content_region_size := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_content_region_size');
  nk_window_get_height := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_height');
  nk_window_get_panel := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_panel');
  nk_window_get_position := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_position');
  nk_window_get_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_scroll');
  nk_window_get_size := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_size');
  nk_window_get_width := MemoryGetProcAddress(aDLLHandle, 'nk_window_get_width');
  nk_window_has_focus := MemoryGetProcAddress(aDLLHandle, 'nk_window_has_focus');
  nk_window_is_active := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_active');
  nk_window_is_any_hovered := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_any_hovered');
  nk_window_is_closed := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_closed');
  nk_window_is_collapsed := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_collapsed');
  nk_window_is_hidden := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_hidden');
  nk_window_is_hovered := MemoryGetProcAddress(aDLLHandle, 'nk_window_is_hovered');
  nk_window_set_bounds := MemoryGetProcAddress(aDLLHandle, 'nk_window_set_bounds');
  nk_window_set_focus := MemoryGetProcAddress(aDLLHandle, 'nk_window_set_focus');
  nk_window_set_position := MemoryGetProcAddress(aDLLHandle, 'nk_window_set_position');
  nk_window_set_scroll := MemoryGetProcAddress(aDLLHandle, 'nk_window_set_scroll');
  nk_window_set_size := MemoryGetProcAddress(aDLLHandle, 'nk_window_set_size');
  nk_window_show := MemoryGetProcAddress(aDLLHandle, 'nk_window_show');
  nk_window_show_if := MemoryGetProcAddress(aDLLHandle, 'nk_window_show_if');
  PHYSFS_deinit := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_deinit');
  PHYSFS_getWriteDir := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_getWriteDir');
  PHYSFS_init := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_init');
  PHYSFS_mount := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_mount');
  PHYSFS_setWriteDir := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_setWriteDir');
  PHYSFS_unmount := MemoryGetProcAddress(aDLLHandle, 'PHYSFS_unmount');
  PHYSFSRWOPS_openAppend := MemoryGetProcAddress(aDLLHandle, 'PHYSFSRWOPS_openAppend');
  PHYSFSRWOPS_openRead := MemoryGetProcAddress(aDLLHandle, 'PHYSFSRWOPS_openRead');
  PHYSFSRWOPS_openWrite := MemoryGetProcAddress(aDLLHandle, 'PHYSFSRWOPS_openWrite');
  plm_audio_create_with_buffer := MemoryGetProcAddress(aDLLHandle, 'plm_audio_create_with_buffer');
  plm_audio_decode := MemoryGetProcAddress(aDLLHandle, 'plm_audio_decode');
  plm_audio_destroy := MemoryGetProcAddress(aDLLHandle, 'plm_audio_destroy');
  plm_audio_get_samplerate := MemoryGetProcAddress(aDLLHandle, 'plm_audio_get_samplerate');
  plm_audio_get_time := MemoryGetProcAddress(aDLLHandle, 'plm_audio_get_time');
  plm_audio_has_ended := MemoryGetProcAddress(aDLLHandle, 'plm_audio_has_ended');
  plm_audio_has_header := MemoryGetProcAddress(aDLLHandle, 'plm_audio_has_header');
  plm_audio_rewind := MemoryGetProcAddress(aDLLHandle, 'plm_audio_rewind');
  plm_audio_set_time := MemoryGetProcAddress(aDLLHandle, 'plm_audio_set_time');
  plm_buffer_create_for_appending := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_create_for_appending');
  plm_buffer_create_with_capacity := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_create_with_capacity');
  plm_buffer_create_with_file := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_create_with_file');
  plm_buffer_create_with_filename := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_create_with_filename');
  plm_buffer_create_with_memory := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_create_with_memory');
  plm_buffer_destroy := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_destroy');
  plm_buffer_get_remaining := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_get_remaining');
  plm_buffer_get_size := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_get_size');
  plm_buffer_has_ended := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_has_ended');
  plm_buffer_rewind := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_rewind');
  plm_buffer_set_load_callback := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_set_load_callback');
  plm_buffer_signal_end := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_signal_end');
  plm_buffer_write := MemoryGetProcAddress(aDLLHandle, 'plm_buffer_write');
  plm_create_with_buffer := MemoryGetProcAddress(aDLLHandle, 'plm_create_with_buffer');
  plm_create_with_file := MemoryGetProcAddress(aDLLHandle, 'plm_create_with_file');
  plm_create_with_filename := MemoryGetProcAddress(aDLLHandle, 'plm_create_with_filename');
  plm_create_with_memory := MemoryGetProcAddress(aDLLHandle, 'plm_create_with_memory');
  plm_decode := MemoryGetProcAddress(aDLLHandle, 'plm_decode');
  plm_decode_audio := MemoryGetProcAddress(aDLLHandle, 'plm_decode_audio');
  plm_decode_video := MemoryGetProcAddress(aDLLHandle, 'plm_decode_video');
  plm_demux_create := MemoryGetProcAddress(aDLLHandle, 'plm_demux_create');
  plm_demux_decode := MemoryGetProcAddress(aDLLHandle, 'plm_demux_decode');
  plm_demux_destroy := MemoryGetProcAddress(aDLLHandle, 'plm_demux_destroy');
  plm_demux_get_duration := MemoryGetProcAddress(aDLLHandle, 'plm_demux_get_duration');
  plm_demux_get_num_audio_streams := MemoryGetProcAddress(aDLLHandle, 'plm_demux_get_num_audio_streams');
  plm_demux_get_num_video_streams := MemoryGetProcAddress(aDLLHandle, 'plm_demux_get_num_video_streams');
  plm_demux_get_start_time := MemoryGetProcAddress(aDLLHandle, 'plm_demux_get_start_time');
  plm_demux_has_ended := MemoryGetProcAddress(aDLLHandle, 'plm_demux_has_ended');
  plm_demux_has_headers := MemoryGetProcAddress(aDLLHandle, 'plm_demux_has_headers');
  plm_demux_rewind := MemoryGetProcAddress(aDLLHandle, 'plm_demux_rewind');
  plm_demux_seek := MemoryGetProcAddress(aDLLHandle, 'plm_demux_seek');
  plm_destroy := MemoryGetProcAddress(aDLLHandle, 'plm_destroy');
  plm_frame_to_abgr := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_abgr');
  plm_frame_to_argb := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_argb');
  plm_frame_to_bgr := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_bgr');
  plm_frame_to_bgra := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_bgra');
  plm_frame_to_rgb := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_rgb');
  plm_frame_to_rgba := MemoryGetProcAddress(aDLLHandle, 'plm_frame_to_rgba');
  plm_get_audio_enabled := MemoryGetProcAddress(aDLLHandle, 'plm_get_audio_enabled');
  plm_get_audio_lead_time := MemoryGetProcAddress(aDLLHandle, 'plm_get_audio_lead_time');
  plm_get_duration := MemoryGetProcAddress(aDLLHandle, 'plm_get_duration');
  plm_get_framerate := MemoryGetProcAddress(aDLLHandle, 'plm_get_framerate');
  plm_get_height := MemoryGetProcAddress(aDLLHandle, 'plm_get_height');
  plm_get_loop := MemoryGetProcAddress(aDLLHandle, 'plm_get_loop');
  plm_get_num_audio_streams := MemoryGetProcAddress(aDLLHandle, 'plm_get_num_audio_streams');
  plm_get_num_video_streams := MemoryGetProcAddress(aDLLHandle, 'plm_get_num_video_streams');
  plm_get_samplerate := MemoryGetProcAddress(aDLLHandle, 'plm_get_samplerate');
  plm_get_time := MemoryGetProcAddress(aDLLHandle, 'plm_get_time');
  plm_get_video_enabled := MemoryGetProcAddress(aDLLHandle, 'plm_get_video_enabled');
  plm_get_width := MemoryGetProcAddress(aDLLHandle, 'plm_get_width');
  plm_has_ended := MemoryGetProcAddress(aDLLHandle, 'plm_has_ended');
  plm_has_headers := MemoryGetProcAddress(aDLLHandle, 'plm_has_headers');
  plm_rewind := MemoryGetProcAddress(aDLLHandle, 'plm_rewind');
  plm_seek := MemoryGetProcAddress(aDLLHandle, 'plm_seek');
  plm_seek_frame := MemoryGetProcAddress(aDLLHandle, 'plm_seek_frame');
  plm_set_audio_decode_callback := MemoryGetProcAddress(aDLLHandle, 'plm_set_audio_decode_callback');
  plm_set_audio_enabled := MemoryGetProcAddress(aDLLHandle, 'plm_set_audio_enabled');
  plm_set_audio_lead_time := MemoryGetProcAddress(aDLLHandle, 'plm_set_audio_lead_time');
  plm_set_audio_stream := MemoryGetProcAddress(aDLLHandle, 'plm_set_audio_stream');
  plm_set_loop := MemoryGetProcAddress(aDLLHandle, 'plm_set_loop');
  plm_set_video_decode_callback := MemoryGetProcAddress(aDLLHandle, 'plm_set_video_decode_callback');
  plm_set_video_enabled := MemoryGetProcAddress(aDLLHandle, 'plm_set_video_enabled');
  plm_video_create_with_buffer := MemoryGetProcAddress(aDLLHandle, 'plm_video_create_with_buffer');
  plm_video_decode := MemoryGetProcAddress(aDLLHandle, 'plm_video_decode');
  plm_video_destroy := MemoryGetProcAddress(aDLLHandle, 'plm_video_destroy');
  plm_video_get_framerate := MemoryGetProcAddress(aDLLHandle, 'plm_video_get_framerate');
  plm_video_get_height := MemoryGetProcAddress(aDLLHandle, 'plm_video_get_height');
  plm_video_get_time := MemoryGetProcAddress(aDLLHandle, 'plm_video_get_time');
  plm_video_get_width := MemoryGetProcAddress(aDLLHandle, 'plm_video_get_width');
  plm_video_has_ended := MemoryGetProcAddress(aDLLHandle, 'plm_video_has_ended');
  plm_video_has_header := MemoryGetProcAddress(aDLLHandle, 'plm_video_has_header');
  plm_video_rewind := MemoryGetProcAddress(aDLLHandle, 'plm_video_rewind');
  plm_video_set_no_delay := MemoryGetProcAddress(aDLLHandle, 'plm_video_set_no_delay');
  plm_video_set_time := MemoryGetProcAddress(aDLLHandle, 'plm_video_set_time');
  SDL_abs := MemoryGetProcAddress(aDLLHandle, 'SDL_abs');
  SDL_acos := MemoryGetProcAddress(aDLLHandle, 'SDL_acos');
  SDL_acosf := MemoryGetProcAddress(aDLLHandle, 'SDL_acosf');
  SDL_AddEventWatch := MemoryGetProcAddress(aDLLHandle, 'SDL_AddEventWatch');
  SDL_AddGamepadMapping := MemoryGetProcAddress(aDLLHandle, 'SDL_AddGamepadMapping');
  SDL_AddGamepadMappingsFromRW := MemoryGetProcAddress(aDLLHandle, 'SDL_AddGamepadMappingsFromRW');
  SDL_AddHintCallback := MemoryGetProcAddress(aDLLHandle, 'SDL_AddHintCallback');
  SDL_AddTimer := MemoryGetProcAddress(aDLLHandle, 'SDL_AddTimer');
  SDL_aligned_alloc := MemoryGetProcAddress(aDLLHandle, 'SDL_aligned_alloc');
  SDL_aligned_free := MemoryGetProcAddress(aDLLHandle, 'SDL_aligned_free');
  SDL_asin := MemoryGetProcAddress(aDLLHandle, 'SDL_asin');
  SDL_asinf := MemoryGetProcAddress(aDLLHandle, 'SDL_asinf');
  SDL_asprintf := MemoryGetProcAddress(aDLLHandle, 'SDL_asprintf');
  SDL_atan := MemoryGetProcAddress(aDLLHandle, 'SDL_atan');
  SDL_atan2 := MemoryGetProcAddress(aDLLHandle, 'SDL_atan2');
  SDL_atan2f := MemoryGetProcAddress(aDLLHandle, 'SDL_atan2f');
  SDL_atanf := MemoryGetProcAddress(aDLLHandle, 'SDL_atanf');
  SDL_atof := MemoryGetProcAddress(aDLLHandle, 'SDL_atof');
  SDL_atoi := MemoryGetProcAddress(aDLLHandle, 'SDL_atoi');
  SDL_AtomicAdd := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicAdd');
  SDL_AtomicCAS := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicCAS');
  SDL_AtomicCASPtr := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicCASPtr');
  SDL_AtomicGet := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicGet');
  SDL_AtomicGetPtr := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicGetPtr');
  SDL_AtomicLock := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicLock');
  SDL_AtomicSet := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicSet');
  SDL_AtomicSetPtr := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicSetPtr');
  SDL_AtomicTryLock := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicTryLock');
  SDL_AtomicUnlock := MemoryGetProcAddress(aDLLHandle, 'SDL_AtomicUnlock');
  SDL_AttachVirtualJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_AttachVirtualJoystick');
  SDL_AttachVirtualJoystickEx := MemoryGetProcAddress(aDLLHandle, 'SDL_AttachVirtualJoystickEx');
  SDL_BlitSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_BlitSurface');
  SDL_BlitSurfaceScaled := MemoryGetProcAddress(aDLLHandle, 'SDL_BlitSurfaceScaled');
  SDL_BlitSurfaceUnchecked := MemoryGetProcAddress(aDLLHandle, 'SDL_BlitSurfaceUnchecked');
  SDL_BlitSurfaceUncheckedScaled := MemoryGetProcAddress(aDLLHandle, 'SDL_BlitSurfaceUncheckedScaled');
  SDL_bsearch := MemoryGetProcAddress(aDLLHandle, 'SDL_bsearch');
  SDL_calloc := MemoryGetProcAddress(aDLLHandle, 'SDL_calloc');
  SDL_CaptureMouse := MemoryGetProcAddress(aDLLHandle, 'SDL_CaptureMouse');
  SDL_ceil := MemoryGetProcAddress(aDLLHandle, 'SDL_ceil');
  SDL_ceilf := MemoryGetProcAddress(aDLLHandle, 'SDL_ceilf');
  SDL_ClearAudioStream := MemoryGetProcAddress(aDLLHandle, 'SDL_ClearAudioStream');
  SDL_ClearComposition := MemoryGetProcAddress(aDLLHandle, 'SDL_ClearComposition');
  SDL_ClearError := MemoryGetProcAddress(aDLLHandle, 'SDL_ClearError');
  SDL_ClearHints := MemoryGetProcAddress(aDLLHandle, 'SDL_ClearHints');
  SDL_ClearQueuedAudio := MemoryGetProcAddress(aDLLHandle, 'SDL_ClearQueuedAudio');
  SDL_CloseAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_CloseAudioDevice');
  SDL_CloseGamepad := MemoryGetProcAddress(aDLLHandle, 'SDL_CloseGamepad');
  SDL_CloseJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_CloseJoystick');
  SDL_CloseSensor := MemoryGetProcAddress(aDLLHandle, 'SDL_CloseSensor');
  SDL_ComposeCustomBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_ComposeCustomBlendMode');
  SDL_CondBroadcast := MemoryGetProcAddress(aDLLHandle, 'SDL_CondBroadcast');
  SDL_CondSignal := MemoryGetProcAddress(aDLLHandle, 'SDL_CondSignal');
  SDL_CondWait := MemoryGetProcAddress(aDLLHandle, 'SDL_CondWait');
  SDL_CondWaitTimeout := MemoryGetProcAddress(aDLLHandle, 'SDL_CondWaitTimeout');
  SDL_ConvertAudioSamples := MemoryGetProcAddress(aDLLHandle, 'SDL_ConvertAudioSamples');
  SDL_ConvertPixels := MemoryGetProcAddress(aDLLHandle, 'SDL_ConvertPixels');
  SDL_ConvertSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_ConvertSurface');
  SDL_ConvertSurfaceFormat := MemoryGetProcAddress(aDLLHandle, 'SDL_ConvertSurfaceFormat');
  SDL_copysign := MemoryGetProcAddress(aDLLHandle, 'SDL_copysign');
  SDL_copysignf := MemoryGetProcAddress(aDLLHandle, 'SDL_copysignf');
  SDL_cos := MemoryGetProcAddress(aDLLHandle, 'SDL_cos');
  SDL_cosf := MemoryGetProcAddress(aDLLHandle, 'SDL_cosf');
  SDL_crc16 := MemoryGetProcAddress(aDLLHandle, 'SDL_crc16');
  SDL_crc32 := MemoryGetProcAddress(aDLLHandle, 'SDL_crc32');
  SDL_CreateAudioStream := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateAudioStream');
  SDL_CreateColorCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateColorCursor');
  SDL_CreateCond := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateCond');
  SDL_CreateCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateCursor');
  SDL_CreateMutex := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateMutex');
  SDL_CreatePalette := MemoryGetProcAddress(aDLLHandle, 'SDL_CreatePalette');
  SDL_CreatePixelFormat := MemoryGetProcAddress(aDLLHandle, 'SDL_CreatePixelFormat');
  SDL_CreateRenderer := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateRenderer');
  SDL_CreateRW := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateRW');
  SDL_CreateSemaphore := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateSemaphore');
  SDL_CreateShapedWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateShapedWindow');
  SDL_CreateSoftwareRenderer := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateSoftwareRenderer');
  SDL_CreateSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateSurface');
  SDL_CreateSurfaceFrom := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateSurfaceFrom');
  SDL_CreateSystemCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateSystemCursor');
  SDL_CreateTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateTexture');
  SDL_CreateTextureFromSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateTextureFromSurface');
  SDL_CreateThread := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateThread');
  SDL_CreateThreadWithStackSize := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateThreadWithStackSize');
  SDL_CreateWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateWindow');
  SDL_CreateWindowAndRenderer := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateWindowAndRenderer');
  SDL_CreateWindowFrom := MemoryGetProcAddress(aDLLHandle, 'SDL_CreateWindowFrom');
  SDL_CursorVisible := MemoryGetProcAddress(aDLLHandle, 'SDL_CursorVisible');
  SDL_Delay := MemoryGetProcAddress(aDLLHandle, 'SDL_Delay');
  SDL_DelayNS := MemoryGetProcAddress(aDLLHandle, 'SDL_DelayNS');
  SDL_DelEventWatch := MemoryGetProcAddress(aDLLHandle, 'SDL_DelEventWatch');
  SDL_DelHintCallback := MemoryGetProcAddress(aDLLHandle, 'SDL_DelHintCallback');
  SDL_DequeueAudio := MemoryGetProcAddress(aDLLHandle, 'SDL_DequeueAudio');
  SDL_DestroyAudioStream := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyAudioStream');
  SDL_DestroyCond := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyCond');
  SDL_DestroyCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyCursor');
  SDL_DestroyMutex := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyMutex');
  SDL_DestroyPalette := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyPalette');
  SDL_DestroyPixelFormat := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyPixelFormat');
  SDL_DestroyRenderer := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyRenderer');
  SDL_DestroyRW := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyRW');
  SDL_DestroySemaphore := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroySemaphore');
  SDL_DestroySurface := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroySurface');
  SDL_DestroyTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyTexture');
  SDL_DestroyWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_DestroyWindow');
  SDL_DetachThread := MemoryGetProcAddress(aDLLHandle, 'SDL_DetachThread');
  SDL_DetachVirtualJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_DetachVirtualJoystick');
  SDL_Direct3D9GetAdapterIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_Direct3D9GetAdapterIndex');
  SDL_DisableScreenSaver := MemoryGetProcAddress(aDLLHandle, 'SDL_DisableScreenSaver');
  SDL_DuplicateSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_DuplicateSurface');
  SDL_DXGIGetOutputInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_DXGIGetOutputInfo');
  SDL_EGL_GetCurrentEGLConfig := MemoryGetProcAddress(aDLLHandle, 'SDL_EGL_GetCurrentEGLConfig');
  SDL_EGL_GetCurrentEGLDisplay := MemoryGetProcAddress(aDLLHandle, 'SDL_EGL_GetCurrentEGLDisplay');
  SDL_EGL_GetProcAddress := MemoryGetProcAddress(aDLLHandle, 'SDL_EGL_GetProcAddress');
  SDL_EGL_GetWindowEGLSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_EGL_GetWindowEGLSurface');
  SDL_EGL_SetEGLAttributeCallbacks := MemoryGetProcAddress(aDLLHandle, 'SDL_EGL_SetEGLAttributeCallbacks');
  SDL_EnableScreenSaver := MemoryGetProcAddress(aDLLHandle, 'SDL_EnableScreenSaver');
  SDL_Error := MemoryGetProcAddress(aDLLHandle, 'SDL_Error');
  SDL_EventEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_EventEnabled');
  SDL_exp := MemoryGetProcAddress(aDLLHandle, 'SDL_exp');
  SDL_expf := MemoryGetProcAddress(aDLLHandle, 'SDL_expf');
  SDL_fabs := MemoryGetProcAddress(aDLLHandle, 'SDL_fabs');
  SDL_fabsf := MemoryGetProcAddress(aDLLHandle, 'SDL_fabsf');
  SDL_FillSurfaceRect := MemoryGetProcAddress(aDLLHandle, 'SDL_FillSurfaceRect');
  SDL_FillSurfaceRects := MemoryGetProcAddress(aDLLHandle, 'SDL_FillSurfaceRects');
  SDL_FilterEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_FilterEvents');
  SDL_FlashWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_FlashWindow');
  SDL_floor := MemoryGetProcAddress(aDLLHandle, 'SDL_floor');
  SDL_floorf := MemoryGetProcAddress(aDLLHandle, 'SDL_floorf');
  SDL_FlushAudioStream := MemoryGetProcAddress(aDLLHandle, 'SDL_FlushAudioStream');
  SDL_FlushEvent := MemoryGetProcAddress(aDLLHandle, 'SDL_FlushEvent');
  SDL_FlushEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_FlushEvents');
  SDL_fmod := MemoryGetProcAddress(aDLLHandle, 'SDL_fmod');
  SDL_fmodf := MemoryGetProcAddress(aDLLHandle, 'SDL_fmodf');
  SDL_free := MemoryGetProcAddress(aDLLHandle, 'SDL_free');
  SDL_GamepadConnected := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadConnected');
  SDL_GamepadEventsEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadEventsEnabled');
  SDL_GamepadHasAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasAxis');
  SDL_GamepadHasButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasButton');
  SDL_GamepadHasLED := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasLED');
  SDL_GamepadHasRumble := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasRumble');
  SDL_GamepadHasRumbleTriggers := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasRumbleTriggers');
  SDL_GamepadHasSensor := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadHasSensor');
  SDL_GamepadSensorEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_GamepadSensorEnabled');
  SDL_GetAssertionHandler := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAssertionHandler');
  SDL_GetAssertionReport := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAssertionReport');
  SDL_GetAudioDeviceName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioDeviceName');
  SDL_GetAudioDeviceSpec := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioDeviceSpec');
  SDL_GetAudioDeviceStatus := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioDeviceStatus');
  SDL_GetAudioDriver := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioDriver');
  SDL_GetAudioStreamAvailable := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioStreamAvailable');
  SDL_GetAudioStreamData := MemoryGetProcAddress(aDLLHandle, 'SDL_GetAudioStreamData');
  SDL_GetBasePath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetBasePath');
  SDL_GetClipboardText := MemoryGetProcAddress(aDLLHandle, 'SDL_GetClipboardText');
  SDL_GetClosestDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetClosestDisplayMode');
  SDL_GetCPUCacheLineSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCPUCacheLineSize');
  SDL_GetCPUCount := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCPUCount');
  SDL_GetCurrentAudioDriver := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCurrentAudioDriver');
  SDL_GetCurrentDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCurrentDisplayMode');
  SDL_GetCurrentVideoDriver := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCurrentVideoDriver');
  SDL_GetCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetCursor');
  SDL_GetDefaultAssertionHandler := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDefaultAssertionHandler');
  SDL_GetDefaultAudioInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDefaultAudioInfo');
  SDL_GetDefaultCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDefaultCursor');
  SDL_GetDesktopDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDesktopDisplayMode');
  SDL_GetDisplayBounds := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayBounds');
  SDL_GetDisplayIndexForPoint := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayIndexForPoint');
  SDL_GetDisplayIndexForRect := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayIndexForRect');
  SDL_GetDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayMode');
  SDL_GetDisplayName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayName');
  SDL_GetDisplayOrientation := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayOrientation');
  SDL_GetDisplayPhysicalDPI := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayPhysicalDPI');
  SDL_GetDisplayUsableBounds := MemoryGetProcAddress(aDLLHandle, 'SDL_GetDisplayUsableBounds');
  SDL_getenv := MemoryGetProcAddress(aDLLHandle, 'SDL_getenv');
  SDL_GetError := MemoryGetProcAddress(aDLLHandle, 'SDL_GetError');
  SDL_GetErrorMsg := MemoryGetProcAddress(aDLLHandle, 'SDL_GetErrorMsg');
  SDL_GetEventFilter := MemoryGetProcAddress(aDLLHandle, 'SDL_GetEventFilter');
  SDL_GetGamepadAppleSFSymbolsNameForAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadAppleSFSymbolsNameForAxis');
  SDL_GetGamepadAppleSFSymbolsNameForButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadAppleSFSymbolsNameForButton');
  SDL_GetGamepadAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadAxis');
  SDL_GetGamepadAxisFromString := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadAxisFromString');
  SDL_GetGamepadBindForAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadBindForAxis');
  SDL_GetGamepadBindForButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadBindForButton');
  SDL_GetGamepadButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadButton');
  SDL_GetGamepadButtonFromString := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadButtonFromString');
  SDL_GetGamepadFirmwareVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadFirmwareVersion');
  SDL_GetGamepadFromInstanceID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadFromInstanceID');
  SDL_GetGamepadFromPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadFromPlayerIndex');
  SDL_GetGamepadInstanceGUID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceGUID');
  SDL_GetGamepadInstanceMapping := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceMapping');
  SDL_GetGamepadInstanceName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceName');
  SDL_GetGamepadInstancePath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstancePath');
  SDL_GetGamepadInstancePlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstancePlayerIndex');
  SDL_GetGamepadInstanceProduct := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceProduct');
  SDL_GetGamepadInstanceProductVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceProductVersion');
  SDL_GetGamepadInstanceType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceType');
  SDL_GetGamepadInstanceVendor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadInstanceVendor');
  SDL_GetGamepadJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadJoystick');
  SDL_GetGamepadMapping := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadMapping');
  SDL_GetGamepadMappingForGUID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadMappingForGUID');
  SDL_GetGamepadMappingForIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadMappingForIndex');
  SDL_GetGamepadName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadName');
  SDL_GetGamepadPath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadPath');
  SDL_GetGamepadPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadPlayerIndex');
  SDL_GetGamepadProduct := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadProduct');
  SDL_GetGamepadProductVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadProductVersion');
  SDL_GetGamepads := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepads');
  SDL_GetGamepadSensorData := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadSensorData');
  SDL_GetGamepadSensorDataRate := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadSensorDataRate');
  SDL_GetGamepadSerial := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadSerial');
  SDL_GetGamepadStringForAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadStringForAxis');
  SDL_GetGamepadStringForButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadStringForButton');
  SDL_GetGamepadTouchpadFinger := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadTouchpadFinger');
  SDL_GetGamepadType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadType');
  SDL_GetGamepadVendor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGamepadVendor');
  SDL_GetGlobalMouseState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGlobalMouseState');
  SDL_GetGrabbedWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_GetGrabbedWindow');
  SDL_GetHint := MemoryGetProcAddress(aDLLHandle, 'SDL_GetHint');
  SDL_GetHintBoolean := MemoryGetProcAddress(aDLLHandle, 'SDL_GetHintBoolean');
  SDL_GetJoystickAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickAxis');
  SDL_GetJoystickAxisInitialState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickAxisInitialState');
  SDL_GetJoystickButton := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickButton');
  SDL_GetJoystickFirmwareVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickFirmwareVersion');
  SDL_GetJoystickFromInstanceID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickFromInstanceID');
  SDL_GetJoystickFromPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickFromPlayerIndex');
  SDL_GetJoystickGUID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickGUID');
  SDL_GetJoystickGUIDFromString := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickGUIDFromString');
  SDL_GetJoystickGUIDInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickGUIDInfo');
  SDL_GetJoystickGUIDString := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickGUIDString');
  SDL_GetJoystickHat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickHat');
  SDL_GetJoystickInstanceGUID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceGUID');
  SDL_GetJoystickInstanceID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceID');
  SDL_GetJoystickInstanceName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceName');
  SDL_GetJoystickInstancePath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstancePath');
  SDL_GetJoystickInstancePlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstancePlayerIndex');
  SDL_GetJoystickInstanceProduct := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceProduct');
  SDL_GetJoystickInstanceProductVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceProductVersion');
  SDL_GetJoystickInstanceType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceType');
  SDL_GetJoystickInstanceVendor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickInstanceVendor');
  SDL_GetJoystickName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickName');
  SDL_GetJoystickPath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickPath');
  SDL_GetJoystickPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickPlayerIndex');
  SDL_GetJoystickPowerLevel := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickPowerLevel');
  SDL_GetJoystickProduct := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickProduct');
  SDL_GetJoystickProductVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickProductVersion');
  SDL_GetJoysticks := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoysticks');
  SDL_GetJoystickSerial := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickSerial');
  SDL_GetJoystickType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickType');
  SDL_GetJoystickVendor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetJoystickVendor');
  SDL_GetKeyboardFocus := MemoryGetProcAddress(aDLLHandle, 'SDL_GetKeyboardFocus');
  SDL_GetKeyboardState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetKeyboardState');
  SDL_GetKeyFromName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetKeyFromName');
  SDL_GetKeyFromScancode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetKeyFromScancode');
  SDL_GetKeyName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetKeyName');
  SDL_GetMasksForPixelFormatEnum := MemoryGetProcAddress(aDLLHandle, 'SDL_GetMasksForPixelFormatEnum');
  SDL_GetMemoryFunctions := MemoryGetProcAddress(aDLLHandle, 'SDL_GetMemoryFunctions');
  SDL_GetModState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetModState');
  SDL_GetMouseFocus := MemoryGetProcAddress(aDLLHandle, 'SDL_GetMouseFocus');
  SDL_GetMouseState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetMouseState');
  SDL_GetNumAllocations := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumAllocations');
  SDL_GetNumAudioDevices := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumAudioDevices');
  SDL_GetNumAudioDrivers := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumAudioDrivers');
  SDL_GetNumDisplayModes := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumDisplayModes');
  SDL_GetNumGamepadMappings := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumGamepadMappings');
  SDL_GetNumGamepadTouchpadFingers := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumGamepadTouchpadFingers');
  SDL_GetNumGamepadTouchpads := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumGamepadTouchpads');
  SDL_GetNumJoystickAxes := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumJoystickAxes');
  SDL_GetNumJoystickButtons := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumJoystickButtons');
  SDL_GetNumJoystickHats := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumJoystickHats');
  SDL_GetNumRenderDrivers := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumRenderDrivers');
  SDL_GetNumTouchDevices := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumTouchDevices');
  SDL_GetNumTouchFingers := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumTouchFingers');
  SDL_GetNumVideoDisplays := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumVideoDisplays');
  SDL_GetNumVideoDrivers := MemoryGetProcAddress(aDLLHandle, 'SDL_GetNumVideoDrivers');
  SDL_GetOriginalMemoryFunctions := MemoryGetProcAddress(aDLLHandle, 'SDL_GetOriginalMemoryFunctions');
  SDL_GetPerformanceCounter := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPerformanceCounter');
  SDL_GetPerformanceFrequency := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPerformanceFrequency');
  SDL_GetPixelFormatEnumForMasks := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPixelFormatEnumForMasks');
  SDL_GetPixelFormatName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPixelFormatName');
  SDL_GetPlatform := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPlatform');
  SDL_GetPowerInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPowerInfo');
  SDL_GetPreferredLocales := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPreferredLocales');
  SDL_GetPrefPath := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPrefPath');
  SDL_GetPrimarySelectionText := MemoryGetProcAddress(aDLLHandle, 'SDL_GetPrimarySelectionText');
  SDL_GetQueuedAudioSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetQueuedAudioSize');
  SDL_GetRectAndLineIntersection := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectAndLineIntersection');
  SDL_GetRectAndLineIntersectionFloat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectAndLineIntersectionFloat');
  SDL_GetRectEnclosingPoints := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectEnclosingPoints');
  SDL_GetRectEnclosingPointsFloat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectEnclosingPointsFloat');
  SDL_GetRectIntersection := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectIntersection');
  SDL_GetRectIntersectionFloat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectIntersectionFloat');
  SDL_GetRectUnion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectUnion');
  SDL_GetRectUnionFloat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRectUnionFloat');
  SDL_GetRelativeMouseMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRelativeMouseMode');
  SDL_GetRelativeMouseState := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRelativeMouseState');
  SDL_GetRenderClipRect := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderClipRect');
  SDL_GetRenderD3D11Device := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderD3D11Device');
  SDL_GetRenderD3D9Device := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderD3D9Device');
  SDL_GetRenderDrawBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderDrawBlendMode');
  SDL_GetRenderDrawColor := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderDrawColor');
  SDL_GetRenderDriver := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderDriver');
  SDL_GetRenderer := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderer');
  SDL_GetRendererInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRendererInfo');
  SDL_GetRendererOutputSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRendererOutputSize');
  SDL_GetRenderIntegerScale := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderIntegerScale');
  SDL_GetRenderLogicalSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderLogicalSize');
  SDL_GetRenderMetalCommandEncoder := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderMetalCommandEncoder');
  SDL_GetRenderMetalLayer := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderMetalLayer');
  SDL_GetRenderScale := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderScale');
  SDL_GetRenderTarget := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderTarget');
  SDL_GetRenderViewport := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderViewport');
  SDL_GetRenderVSync := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderVSync');
  SDL_GetRenderWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRenderWindow');
  SDL_GetRevision := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRevision');
  SDL_GetRGB := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRGB');
  SDL_GetRGBA := MemoryGetProcAddress(aDLLHandle, 'SDL_GetRGBA');
  SDL_GetScancodeFromKey := MemoryGetProcAddress(aDLLHandle, 'SDL_GetScancodeFromKey');
  SDL_GetScancodeFromName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetScancodeFromName');
  SDL_GetScancodeName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetScancodeName');
  SDL_GetSensorData := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorData');
  SDL_GetSensorFromInstanceID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorFromInstanceID');
  SDL_GetSensorInstanceID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorInstanceID');
  SDL_GetSensorInstanceName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorInstanceName');
  SDL_GetSensorInstanceNonPortableType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorInstanceNonPortableType');
  SDL_GetSensorInstanceType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorInstanceType');
  SDL_GetSensorName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorName');
  SDL_GetSensorNonPortableType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorNonPortableType');
  SDL_GetSensors := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensors');
  SDL_GetSensorType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSensorType');
  SDL_GetShapedWindowMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetShapedWindowMode');
  SDL_GetSurfaceAlphaMod := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSurfaceAlphaMod');
  SDL_GetSurfaceBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSurfaceBlendMode');
  SDL_GetSurfaceClipRect := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSurfaceClipRect');
  SDL_GetSurfaceColorKey := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSurfaceColorKey');
  SDL_GetSurfaceColorMod := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSurfaceColorMod');
  SDL_GetSystemRAM := MemoryGetProcAddress(aDLLHandle, 'SDL_GetSystemRAM');
  SDL_GetTextureAlphaMod := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTextureAlphaMod');
  SDL_GetTextureBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTextureBlendMode');
  SDL_GetTextureColorMod := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTextureColorMod');
  SDL_GetTextureScaleMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTextureScaleMode');
  SDL_GetTextureUserData := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTextureUserData');
  SDL_GetThreadID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetThreadID');
  SDL_GetThreadName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetThreadName');
  SDL_GetTicks := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTicks');
  SDL_GetTicksNS := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTicksNS');
  SDL_GetTouchDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTouchDevice');
  SDL_GetTouchDeviceType := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTouchDeviceType');
  SDL_GetTouchFinger := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTouchFinger');
  SDL_GetTouchName := MemoryGetProcAddress(aDLLHandle, 'SDL_GetTouchName');
  SDL_GetVersion := MemoryGetProcAddress(aDLLHandle, 'SDL_GetVersion');
  SDL_GetVideoDriver := MemoryGetProcAddress(aDLLHandle, 'SDL_GetVideoDriver');
  SDL_GetWindowBordersSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowBordersSize');
  SDL_GetWindowData := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowData');
  SDL_GetWindowDisplayIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowDisplayIndex');
  SDL_GetWindowDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowDisplayMode');
  SDL_GetWindowFlags := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowFlags');
  SDL_GetWindowFromID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowFromID');
  SDL_GetWindowGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowGrab');
  SDL_GetWindowICCProfile := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowICCProfile');
  SDL_GetWindowID := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowID');
  SDL_GetWindowKeyboardGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowKeyboardGrab');
  SDL_GetWindowMaximumSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowMaximumSize');
  SDL_GetWindowMinimumSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowMinimumSize');
  SDL_GetWindowMouseGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowMouseGrab');
  SDL_GetWindowMouseRect := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowMouseRect');
  SDL_GetWindowOpacity := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowOpacity');
  SDL_GetWindowPixelFormat := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowPixelFormat');
  SDL_GetWindowPosition := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowPosition');
  SDL_GetWindowSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowSize');
  SDL_GetWindowSizeInPixels := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowSizeInPixels');
  SDL_GetWindowSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowSurface');
  SDL_GetWindowTitle := MemoryGetProcAddress(aDLLHandle, 'SDL_GetWindowTitle');
  SDL_GetYUVConversionMode := MemoryGetProcAddress(aDLLHandle, 'SDL_GetYUVConversionMode');
  SDL_GetYUVConversionModeForResolution := MemoryGetProcAddress(aDLLHandle, 'SDL_GetYUVConversionModeForResolution');
  SDL_GL_BindTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_BindTexture');
  SDL_GL_CreateContext := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_CreateContext');
  SDL_GL_DeleteContext := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_DeleteContext');
  SDL_GL_ExtensionSupported := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_ExtensionSupported');
  SDL_GL_GetAttribute := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetAttribute');
  SDL_GL_GetCurrentContext := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetCurrentContext');
  SDL_GL_GetCurrentWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetCurrentWindow');
  SDL_GL_GetDrawableSize := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetDrawableSize');
  SDL_GL_GetProcAddress := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetProcAddress');
  SDL_GL_GetSwapInterval := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_GetSwapInterval');
  SDL_GL_LoadLibrary := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_LoadLibrary');
  SDL_GL_MakeCurrent := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_MakeCurrent');
  SDL_GL_ResetAttributes := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_ResetAttributes');
  SDL_GL_SetAttribute := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_SetAttribute');
  SDL_GL_SetSwapInterval := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_SetSwapInterval');
  SDL_GL_SwapWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_SwapWindow');
  SDL_GL_UnbindTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_UnbindTexture');
  SDL_GL_UnloadLibrary := MemoryGetProcAddress(aDLLHandle, 'SDL_GL_UnloadLibrary');
  SDL_GUIDFromString := MemoryGetProcAddress(aDLLHandle, 'SDL_GUIDFromString');
  SDL_GUIDToString := MemoryGetProcAddress(aDLLHandle, 'SDL_GUIDToString');
  SDL_HapticClose := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticClose');
  SDL_HapticDestroyEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticDestroyEffect');
  SDL_HapticEffectSupported := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticEffectSupported');
  SDL_HapticGetEffectStatus := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticGetEffectStatus');
  SDL_HapticIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticIndex');
  SDL_HapticName := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticName');
  SDL_HapticNewEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticNewEffect');
  SDL_HapticNumAxes := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticNumAxes');
  SDL_HapticNumEffects := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticNumEffects');
  SDL_HapticNumEffectsPlaying := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticNumEffectsPlaying');
  SDL_HapticOpen := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticOpen');
  SDL_HapticOpened := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticOpened');
  SDL_HapticOpenFromJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticOpenFromJoystick');
  SDL_HapticOpenFromMouse := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticOpenFromMouse');
  SDL_HapticPause := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticPause');
  SDL_HapticQuery := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticQuery');
  SDL_HapticRumbleInit := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticRumbleInit');
  SDL_HapticRumblePlay := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticRumblePlay');
  SDL_HapticRumbleStop := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticRumbleStop');
  SDL_HapticRumbleSupported := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticRumbleSupported');
  SDL_HapticRunEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticRunEffect');
  SDL_HapticSetAutocenter := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticSetAutocenter');
  SDL_HapticSetGain := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticSetGain');
  SDL_HapticStopAll := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticStopAll');
  SDL_HapticStopEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticStopEffect');
  SDL_HapticUnpause := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticUnpause');
  SDL_HapticUpdateEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_HapticUpdateEffect');
  SDL_HasAltiVec := MemoryGetProcAddress(aDLLHandle, 'SDL_HasAltiVec');
  SDL_HasARMSIMD := MemoryGetProcAddress(aDLLHandle, 'SDL_HasARMSIMD');
  SDL_HasAVX := MemoryGetProcAddress(aDLLHandle, 'SDL_HasAVX');
  SDL_HasAVX2 := MemoryGetProcAddress(aDLLHandle, 'SDL_HasAVX2');
  SDL_HasAVX512F := MemoryGetProcAddress(aDLLHandle, 'SDL_HasAVX512F');
  SDL_HasClipboardText := MemoryGetProcAddress(aDLLHandle, 'SDL_HasClipboardText');
  SDL_HasEvent := MemoryGetProcAddress(aDLLHandle, 'SDL_HasEvent');
  SDL_HasEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_HasEvents');
  SDL_HasLASX := MemoryGetProcAddress(aDLLHandle, 'SDL_HasLASX');
  SDL_HasLSX := MemoryGetProcAddress(aDLLHandle, 'SDL_HasLSX');
  SDL_HasMMX := MemoryGetProcAddress(aDLLHandle, 'SDL_HasMMX');
  SDL_HasNEON := MemoryGetProcAddress(aDLLHandle, 'SDL_HasNEON');
  SDL_HasPrimarySelectionText := MemoryGetProcAddress(aDLLHandle, 'SDL_HasPrimarySelectionText');
  SDL_HasRDTSC := MemoryGetProcAddress(aDLLHandle, 'SDL_HasRDTSC');
  SDL_HasRectIntersection := MemoryGetProcAddress(aDLLHandle, 'SDL_HasRectIntersection');
  SDL_HasRectIntersectionFloat := MemoryGetProcAddress(aDLLHandle, 'SDL_HasRectIntersectionFloat');
  SDL_HasScreenKeyboardSupport := MemoryGetProcAddress(aDLLHandle, 'SDL_HasScreenKeyboardSupport');
  SDL_HasSSE := MemoryGetProcAddress(aDLLHandle, 'SDL_HasSSE');
  SDL_HasSSE2 := MemoryGetProcAddress(aDLLHandle, 'SDL_HasSSE2');
  SDL_HasSSE3 := MemoryGetProcAddress(aDLLHandle, 'SDL_HasSSE3');
  SDL_HasSSE41 := MemoryGetProcAddress(aDLLHandle, 'SDL_HasSSE41');
  SDL_HasSSE42 := MemoryGetProcAddress(aDLLHandle, 'SDL_HasSSE42');
  SDL_hid_ble_scan := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_ble_scan');
  SDL_hid_close := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_close');
  SDL_hid_device_change_count := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_device_change_count');
  SDL_hid_enumerate := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_enumerate');
  SDL_hid_exit := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_exit');
  SDL_hid_free_enumeration := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_free_enumeration');
  SDL_hid_get_feature_report := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_get_feature_report');
  SDL_hid_get_indexed_string := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_get_indexed_string');
  SDL_hid_get_manufacturer_string := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_get_manufacturer_string');
  SDL_hid_get_product_string := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_get_product_string');
  SDL_hid_get_serial_number_string := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_get_serial_number_string');
  SDL_hid_init := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_init');
  SDL_hid_open := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_open');
  SDL_hid_open_path := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_open_path');
  SDL_hid_read := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_read');
  SDL_hid_read_timeout := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_read_timeout');
  SDL_hid_send_feature_report := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_send_feature_report');
  SDL_hid_set_nonblocking := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_set_nonblocking');
  SDL_hid_write := MemoryGetProcAddress(aDLLHandle, 'SDL_hid_write');
  SDL_HideCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_HideCursor');
  SDL_HideWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_HideWindow');
  SDL_iconv := MemoryGetProcAddress(aDLLHandle, 'SDL_iconv');
  SDL_iconv_close := MemoryGetProcAddress(aDLLHandle, 'SDL_iconv_close');
  SDL_iconv_open := MemoryGetProcAddress(aDLLHandle, 'SDL_iconv_open');
  SDL_iconv_string := MemoryGetProcAddress(aDLLHandle, 'SDL_iconv_string');
  SDL_Init := MemoryGetProcAddress(aDLLHandle, 'SDL_Init');
  SDL_InitSubSystem := MemoryGetProcAddress(aDLLHandle, 'SDL_InitSubSystem');
  SDL_isalnum := MemoryGetProcAddress(aDLLHandle, 'SDL_isalnum');
  SDL_isalpha := MemoryGetProcAddress(aDLLHandle, 'SDL_isalpha');
  SDL_isblank := MemoryGetProcAddress(aDLLHandle, 'SDL_isblank');
  SDL_iscntrl := MemoryGetProcAddress(aDLLHandle, 'SDL_iscntrl');
  SDL_isdigit := MemoryGetProcAddress(aDLLHandle, 'SDL_isdigit');
  SDL_IsGamepad := MemoryGetProcAddress(aDLLHandle, 'SDL_IsGamepad');
  SDL_isgraph := MemoryGetProcAddress(aDLLHandle, 'SDL_isgraph');
  SDL_IsJoystickVirtual := MemoryGetProcAddress(aDLLHandle, 'SDL_IsJoystickVirtual');
  SDL_islower := MemoryGetProcAddress(aDLLHandle, 'SDL_islower');
  SDL_isprint := MemoryGetProcAddress(aDLLHandle, 'SDL_isprint');
  SDL_ispunct := MemoryGetProcAddress(aDLLHandle, 'SDL_ispunct');
  SDL_IsShapedWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_IsShapedWindow');
  SDL_isspace := MemoryGetProcAddress(aDLLHandle, 'SDL_isspace');
  SDL_IsTablet := MemoryGetProcAddress(aDLLHandle, 'SDL_IsTablet');
  SDL_isupper := MemoryGetProcAddress(aDLLHandle, 'SDL_isupper');
  SDL_isxdigit := MemoryGetProcAddress(aDLLHandle, 'SDL_isxdigit');
  SDL_itoa := MemoryGetProcAddress(aDLLHandle, 'SDL_itoa');
  SDL_JoystickConnected := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickConnected');
  SDL_JoystickEventsEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickEventsEnabled');
  SDL_JoystickHasLED := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickHasLED');
  SDL_JoystickHasRumble := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickHasRumble');
  SDL_JoystickHasRumbleTriggers := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickHasRumbleTriggers');
  SDL_JoystickIsHaptic := MemoryGetProcAddress(aDLLHandle, 'SDL_JoystickIsHaptic');
  SDL_lltoa := MemoryGetProcAddress(aDLLHandle, 'SDL_lltoa');
  SDL_LoadBMP_RW := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadBMP_RW');
  SDL_LoadFile := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadFile');
  SDL_LoadFile_RW := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadFile_RW');
  SDL_LoadFunction := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadFunction');
  SDL_LoadObject := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadObject');
  SDL_LoadWAV_RW := MemoryGetProcAddress(aDLLHandle, 'SDL_LoadWAV_RW');
  SDL_LockAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_LockAudioDevice');
  SDL_LockJoysticks := MemoryGetProcAddress(aDLLHandle, 'SDL_LockJoysticks');
  SDL_LockMutex := MemoryGetProcAddress(aDLLHandle, 'SDL_LockMutex');
  SDL_LockSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_LockSurface');
  SDL_LockTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_LockTexture');
  SDL_LockTextureToSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_LockTextureToSurface');
  SDL_log := MemoryGetProcAddress(aDLLHandle, 'SDL_log');
  SDL_Log_ := MemoryGetProcAddress(aDLLHandle, 'SDL_Log_');
  SDL_log10 := MemoryGetProcAddress(aDLLHandle, 'SDL_log10');
  SDL_log10f := MemoryGetProcAddress(aDLLHandle, 'SDL_log10f');
  SDL_LogCritical := MemoryGetProcAddress(aDLLHandle, 'SDL_LogCritical');
  SDL_LogDebug := MemoryGetProcAddress(aDLLHandle, 'SDL_LogDebug');
  SDL_LogError := MemoryGetProcAddress(aDLLHandle, 'SDL_LogError');
  SDL_logf := MemoryGetProcAddress(aDLLHandle, 'SDL_logf');
  SDL_LogGetOutputFunction := MemoryGetProcAddress(aDLLHandle, 'SDL_LogGetOutputFunction');
  SDL_LogGetPriority := MemoryGetProcAddress(aDLLHandle, 'SDL_LogGetPriority');
  SDL_LogInfo := MemoryGetProcAddress(aDLLHandle, 'SDL_LogInfo');
  SDL_LogMessage := MemoryGetProcAddress(aDLLHandle, 'SDL_LogMessage');
  SDL_LogMessageV := MemoryGetProcAddress(aDLLHandle, 'SDL_LogMessageV');
  SDL_LogResetPriorities := MemoryGetProcAddress(aDLLHandle, 'SDL_LogResetPriorities');
  SDL_LogSetAllPriority := MemoryGetProcAddress(aDLLHandle, 'SDL_LogSetAllPriority');
  SDL_LogSetOutputFunction := MemoryGetProcAddress(aDLLHandle, 'SDL_LogSetOutputFunction');
  SDL_LogSetPriority := MemoryGetProcAddress(aDLLHandle, 'SDL_LogSetPriority');
  SDL_LogVerbose := MemoryGetProcAddress(aDLLHandle, 'SDL_LogVerbose');
  SDL_LogWarn := MemoryGetProcAddress(aDLLHandle, 'SDL_LogWarn');
  SDL_lround := MemoryGetProcAddress(aDLLHandle, 'SDL_lround');
  SDL_lroundf := MemoryGetProcAddress(aDLLHandle, 'SDL_lroundf');
  SDL_ltoa := MemoryGetProcAddress(aDLLHandle, 'SDL_ltoa');
  SDL_malloc := MemoryGetProcAddress(aDLLHandle, 'SDL_malloc');
  SDL_MapRGB := MemoryGetProcAddress(aDLLHandle, 'SDL_MapRGB');
  SDL_MapRGBA := MemoryGetProcAddress(aDLLHandle, 'SDL_MapRGBA');
  SDL_MaximizeWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_MaximizeWindow');
  SDL_memcmp := MemoryGetProcAddress(aDLLHandle, 'SDL_memcmp');
  SDL_memcpy := MemoryGetProcAddress(aDLLHandle, 'SDL_memcpy');
  SDL_memmove := MemoryGetProcAddress(aDLLHandle, 'SDL_memmove');
  SDL_MemoryBarrierAcquireFunction := MemoryGetProcAddress(aDLLHandle, 'SDL_MemoryBarrierAcquireFunction');
  SDL_MemoryBarrierReleaseFunction := MemoryGetProcAddress(aDLLHandle, 'SDL_MemoryBarrierReleaseFunction');
  SDL_memset := MemoryGetProcAddress(aDLLHandle, 'SDL_memset');
  SDL_memset4 := MemoryGetProcAddress(aDLLHandle, 'SDL_memset4');
  SDL_Metal_CreateView := MemoryGetProcAddress(aDLLHandle, 'SDL_Metal_CreateView');
  SDL_Metal_DestroyView := MemoryGetProcAddress(aDLLHandle, 'SDL_Metal_DestroyView');
  SDL_Metal_GetDrawableSize := MemoryGetProcAddress(aDLLHandle, 'SDL_Metal_GetDrawableSize');
  SDL_Metal_GetLayer := MemoryGetProcAddress(aDLLHandle, 'SDL_Metal_GetLayer');
  SDL_MinimizeWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_MinimizeWindow');
  SDL_MixAudioFormat := MemoryGetProcAddress(aDLLHandle, 'SDL_MixAudioFormat');
  SDL_modf := MemoryGetProcAddress(aDLLHandle, 'SDL_modf');
  SDL_modff := MemoryGetProcAddress(aDLLHandle, 'SDL_modff');
  SDL_MouseIsHaptic := MemoryGetProcAddress(aDLLHandle, 'SDL_MouseIsHaptic');
  SDL_NumHaptics := MemoryGetProcAddress(aDLLHandle, 'SDL_NumHaptics');
  SDL_OnApplicationDidBecomeActive := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationDidBecomeActive');
  SDL_OnApplicationDidEnterBackground := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationDidEnterBackground');
  SDL_OnApplicationDidReceiveMemoryWarning := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationDidReceiveMemoryWarning');
  SDL_OnApplicationWillEnterForeground := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationWillEnterForeground');
  SDL_OnApplicationWillResignActive := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationWillResignActive');
  SDL_OnApplicationWillTerminate := MemoryGetProcAddress(aDLLHandle, 'SDL_OnApplicationWillTerminate');
  SDL_OpenAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_OpenAudioDevice');
  SDL_OpenGamepad := MemoryGetProcAddress(aDLLHandle, 'SDL_OpenGamepad');
  SDL_OpenJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_OpenJoystick');
  SDL_OpenSensor := MemoryGetProcAddress(aDLLHandle, 'SDL_OpenSensor');
  SDL_OpenURL := MemoryGetProcAddress(aDLLHandle, 'SDL_OpenURL');
  SDL_PauseAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_PauseAudioDevice');
  SDL_PeepEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_PeepEvents');
  SDL_PlayAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_PlayAudioDevice');
  SDL_PollEvent := MemoryGetProcAddress(aDLLHandle, 'SDL_PollEvent');
  SDL_pow := MemoryGetProcAddress(aDLLHandle, 'SDL_pow');
  SDL_powf := MemoryGetProcAddress(aDLLHandle, 'SDL_powf');
  SDL_PremultiplyAlpha := MemoryGetProcAddress(aDLLHandle, 'SDL_PremultiplyAlpha');
  SDL_PumpEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_PumpEvents');
  SDL_PushEvent := MemoryGetProcAddress(aDLLHandle, 'SDL_PushEvent');
  SDL_PutAudioStreamData := MemoryGetProcAddress(aDLLHandle, 'SDL_PutAudioStreamData');
  SDL_qsort := MemoryGetProcAddress(aDLLHandle, 'SDL_qsort');
  SDL_QueryTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_QueryTexture');
  SDL_QueueAudio := MemoryGetProcAddress(aDLLHandle, 'SDL_QueueAudio');
  SDL_Quit := MemoryGetProcAddress(aDLLHandle, 'SDL_Quit');
  SDL_QuitSubSystem := MemoryGetProcAddress(aDLLHandle, 'SDL_QuitSubSystem');
  SDL_RaiseWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_RaiseWindow');
  SDL_ReadBE16 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadBE16');
  SDL_ReadBE32 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadBE32');
  SDL_ReadBE64 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadBE64');
  SDL_ReadLE16 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadLE16');
  SDL_ReadLE32 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadLE32');
  SDL_ReadLE64 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadLE64');
  SDL_ReadU8 := MemoryGetProcAddress(aDLLHandle, 'SDL_ReadU8');
  SDL_realloc := MemoryGetProcAddress(aDLLHandle, 'SDL_realloc');
  SDL_RegisterEvents := MemoryGetProcAddress(aDLLHandle, 'SDL_RegisterEvents');
  SDL_RemoveTimer := MemoryGetProcAddress(aDLLHandle, 'SDL_RemoveTimer');
  SDL_RenderClear := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderClear');
  SDL_RenderClipEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderClipEnabled');
  SDL_RenderFillRect := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderFillRect');
  SDL_RenderFillRects := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderFillRects');
  SDL_RenderFlush := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderFlush');
  SDL_RenderGeometry := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderGeometry');
  SDL_RenderGeometryRaw := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderGeometryRaw');
  SDL_RenderGetD3D12Device := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderGetD3D12Device');
  SDL_RenderLine := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderLine');
  SDL_RenderLines := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderLines');
  SDL_RenderLogicalToWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderLogicalToWindow');
  SDL_RenderPoint := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderPoint');
  SDL_RenderPoints := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderPoints');
  SDL_RenderPresent := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderPresent');
  SDL_RenderReadPixels := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderReadPixels');
  SDL_RenderRect := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderRect');
  SDL_RenderRects := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderRects');
  SDL_RenderTargetSupported := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderTargetSupported');
  SDL_RenderTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderTexture');
  SDL_RenderTextureRotated := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderTextureRotated');
  SDL_RenderWindowToLogical := MemoryGetProcAddress(aDLLHandle, 'SDL_RenderWindowToLogical');
  SDL_ReportAssertion := MemoryGetProcAddress(aDLLHandle, 'SDL_ReportAssertion');
  SDL_ResetAssertionReport := MemoryGetProcAddress(aDLLHandle, 'SDL_ResetAssertionReport');
  SDL_ResetHint := MemoryGetProcAddress(aDLLHandle, 'SDL_ResetHint');
  SDL_ResetHints := MemoryGetProcAddress(aDLLHandle, 'SDL_ResetHints');
  SDL_ResetKeyboard := MemoryGetProcAddress(aDLLHandle, 'SDL_ResetKeyboard');
  SDL_RestoreWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_RestoreWindow');
  SDL_round := MemoryGetProcAddress(aDLLHandle, 'SDL_round');
  SDL_roundf := MemoryGetProcAddress(aDLLHandle, 'SDL_roundf');
  SDL_RumbleGamepad := MemoryGetProcAddress(aDLLHandle, 'SDL_RumbleGamepad');
  SDL_RumbleGamepadTriggers := MemoryGetProcAddress(aDLLHandle, 'SDL_RumbleGamepadTriggers');
  SDL_RumbleJoystick := MemoryGetProcAddress(aDLLHandle, 'SDL_RumbleJoystick');
  SDL_RumbleJoystickTriggers := MemoryGetProcAddress(aDLLHandle, 'SDL_RumbleJoystickTriggers');
  SDL_RWclose := MemoryGetProcAddress(aDLLHandle, 'SDL_RWclose');
  SDL_RWFromConstMem := MemoryGetProcAddress(aDLLHandle, 'SDL_RWFromConstMem');
  SDL_RWFromFile := MemoryGetProcAddress(aDLLHandle, 'SDL_RWFromFile');
  SDL_RWFromMem := MemoryGetProcAddress(aDLLHandle, 'SDL_RWFromMem');
  SDL_RWread := MemoryGetProcAddress(aDLLHandle, 'SDL_RWread');
  SDL_RWseek := MemoryGetProcAddress(aDLLHandle, 'SDL_RWseek');
  SDL_RWsize := MemoryGetProcAddress(aDLLHandle, 'SDL_RWsize');
  SDL_RWtell := MemoryGetProcAddress(aDLLHandle, 'SDL_RWtell');
  SDL_RWwrite := MemoryGetProcAddress(aDLLHandle, 'SDL_RWwrite');
  SDL_SaveBMP_RW := MemoryGetProcAddress(aDLLHandle, 'SDL_SaveBMP_RW');
  SDL_scalbn := MemoryGetProcAddress(aDLLHandle, 'SDL_scalbn');
  SDL_scalbnf := MemoryGetProcAddress(aDLLHandle, 'SDL_scalbnf');
  SDL_ScreenKeyboardShown := MemoryGetProcAddress(aDLLHandle, 'SDL_ScreenKeyboardShown');
  SDL_ScreenSaverEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_ScreenSaverEnabled');
  SDL_SemPost := MemoryGetProcAddress(aDLLHandle, 'SDL_SemPost');
  SDL_SemTryWait := MemoryGetProcAddress(aDLLHandle, 'SDL_SemTryWait');
  SDL_SemValue := MemoryGetProcAddress(aDLLHandle, 'SDL_SemValue');
  SDL_SemWait := MemoryGetProcAddress(aDLLHandle, 'SDL_SemWait');
  SDL_SemWaitTimeout := MemoryGetProcAddress(aDLLHandle, 'SDL_SemWaitTimeout');
  SDL_SendGamepadEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_SendGamepadEffect');
  SDL_SendJoystickEffect := MemoryGetProcAddress(aDLLHandle, 'SDL_SendJoystickEffect');
  SDL_SetAssertionHandler := MemoryGetProcAddress(aDLLHandle, 'SDL_SetAssertionHandler');
  SDL_SetClipboardText := MemoryGetProcAddress(aDLLHandle, 'SDL_SetClipboardText');
  SDL_SetCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_SetCursor');
  SDL_setenv := MemoryGetProcAddress(aDLLHandle, 'SDL_setenv');
  SDL_SetError := MemoryGetProcAddress(aDLLHandle, 'SDL_SetError');
  SDL_SetEventEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_SetEventEnabled');
  SDL_SetEventFilter := MemoryGetProcAddress(aDLLHandle, 'SDL_SetEventFilter');
  SDL_SetGamepadEventsEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_SetGamepadEventsEnabled');
  SDL_SetGamepadLED := MemoryGetProcAddress(aDLLHandle, 'SDL_SetGamepadLED');
  SDL_SetGamepadPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_SetGamepadPlayerIndex');
  SDL_SetGamepadSensorEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_SetGamepadSensorEnabled');
  SDL_SetHint := MemoryGetProcAddress(aDLLHandle, 'SDL_SetHint');
  SDL_SetHintWithPriority := MemoryGetProcAddress(aDLLHandle, 'SDL_SetHintWithPriority');
  SDL_SetJoystickEventsEnabled := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickEventsEnabled');
  SDL_SetJoystickLED := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickLED');
  SDL_SetJoystickPlayerIndex := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickPlayerIndex');
  SDL_SetJoystickVirtualAxis := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickVirtualAxis');
  SDL_SetJoystickVirtualButton := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickVirtualButton');
  SDL_SetJoystickVirtualHat := MemoryGetProcAddress(aDLLHandle, 'SDL_SetJoystickVirtualHat');
  SDL_SetMemoryFunctions := MemoryGetProcAddress(aDLLHandle, 'SDL_SetMemoryFunctions');
  SDL_SetModState := MemoryGetProcAddress(aDLLHandle, 'SDL_SetModState');
  SDL_SetPaletteColors := MemoryGetProcAddress(aDLLHandle, 'SDL_SetPaletteColors');
  SDL_SetPixelFormatPalette := MemoryGetProcAddress(aDLLHandle, 'SDL_SetPixelFormatPalette');
  SDL_SetPrimarySelectionText := MemoryGetProcAddress(aDLLHandle, 'SDL_SetPrimarySelectionText');
  SDL_SetRelativeMouseMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRelativeMouseMode');
  SDL_SetRenderClipRect := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderClipRect');
  SDL_SetRenderDrawBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderDrawBlendMode');
  SDL_SetRenderDrawColor := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderDrawColor');
  SDL_SetRenderIntegerScale := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderIntegerScale');
  SDL_SetRenderLogicalSize := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderLogicalSize');
  SDL_SetRenderScale := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderScale');
  SDL_SetRenderTarget := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderTarget');
  SDL_SetRenderViewport := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderViewport');
  SDL_SetRenderVSync := MemoryGetProcAddress(aDLLHandle, 'SDL_SetRenderVSync');
  SDL_SetSurfaceAlphaMod := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceAlphaMod');
  SDL_SetSurfaceBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceBlendMode');
  SDL_SetSurfaceClipRect := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceClipRect');
  SDL_SetSurfaceColorKey := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceColorKey');
  SDL_SetSurfaceColorMod := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceColorMod');
  SDL_SetSurfacePalette := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfacePalette');
  SDL_SetSurfaceRLE := MemoryGetProcAddress(aDLLHandle, 'SDL_SetSurfaceRLE');
  SDL_SetTextInputRect := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextInputRect');
  SDL_SetTextureAlphaMod := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextureAlphaMod');
  SDL_SetTextureBlendMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextureBlendMode');
  SDL_SetTextureColorMod := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextureColorMod');
  SDL_SetTextureScaleMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextureScaleMode');
  SDL_SetTextureUserData := MemoryGetProcAddress(aDLLHandle, 'SDL_SetTextureUserData');
  SDL_SetThreadPriority := MemoryGetProcAddress(aDLLHandle, 'SDL_SetThreadPriority');
  SDL_SetWindowAlwaysOnTop := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowAlwaysOnTop');
  SDL_SetWindowBordered := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowBordered');
  SDL_SetWindowData := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowData');
  SDL_SetWindowDisplayMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowDisplayMode');
  SDL_SetWindowFullscreen := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowFullscreen');
  SDL_SetWindowGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowGrab');
  SDL_SetWindowHitTest := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowHitTest');
  SDL_SetWindowIcon := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowIcon');
  SDL_SetWindowInputFocus := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowInputFocus');
  SDL_SetWindowKeyboardGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowKeyboardGrab');
  SDL_SetWindowMaximumSize := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowMaximumSize');
  SDL_SetWindowMinimumSize := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowMinimumSize');
  SDL_SetWindowModalFor := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowModalFor');
  SDL_SetWindowMouseGrab := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowMouseGrab');
  SDL_SetWindowMouseRect := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowMouseRect');
  SDL_SetWindowOpacity := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowOpacity');
  SDL_SetWindowPosition := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowPosition');
  SDL_SetWindowResizable := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowResizable');
  SDL_SetWindowShape := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowShape');
  SDL_SetWindowSize := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowSize');
  SDL_SetWindowsMessageHook := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowsMessageHook');
  SDL_SetWindowTitle := MemoryGetProcAddress(aDLLHandle, 'SDL_SetWindowTitle');
  SDL_SetYUVConversionMode := MemoryGetProcAddress(aDLLHandle, 'SDL_SetYUVConversionMode');
  SDL_ShowCursor := MemoryGetProcAddress(aDLLHandle, 'SDL_ShowCursor');
  SDL_ShowMessageBox := MemoryGetProcAddress(aDLLHandle, 'SDL_ShowMessageBox');
  SDL_ShowSimpleMessageBox := MemoryGetProcAddress(aDLLHandle, 'SDL_ShowSimpleMessageBox');
  SDL_ShowWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_ShowWindow');
  SDL_SIMDGetAlignment := MemoryGetProcAddress(aDLLHandle, 'SDL_SIMDGetAlignment');
  SDL_sin := MemoryGetProcAddress(aDLLHandle, 'SDL_sin');
  SDL_sinf := MemoryGetProcAddress(aDLLHandle, 'SDL_sinf');
  SDL_snprintf := MemoryGetProcAddress(aDLLHandle, 'SDL_snprintf');
  SDL_SoftStretch := MemoryGetProcAddress(aDLLHandle, 'SDL_SoftStretch');
  SDL_SoftStretchLinear := MemoryGetProcAddress(aDLLHandle, 'SDL_SoftStretchLinear');
  SDL_sqrt := MemoryGetProcAddress(aDLLHandle, 'SDL_sqrt');
  SDL_sqrtf := MemoryGetProcAddress(aDLLHandle, 'SDL_sqrtf');
  SDL_sscanf := MemoryGetProcAddress(aDLLHandle, 'SDL_sscanf');
  SDL_StartTextInput := MemoryGetProcAddress(aDLLHandle, 'SDL_StartTextInput');
  SDL_StopTextInput := MemoryGetProcAddress(aDLLHandle, 'SDL_StopTextInput');
  SDL_strcasecmp := MemoryGetProcAddress(aDLLHandle, 'SDL_strcasecmp');
  SDL_strcasestr := MemoryGetProcAddress(aDLLHandle, 'SDL_strcasestr');
  SDL_strchr := MemoryGetProcAddress(aDLLHandle, 'SDL_strchr');
  SDL_strcmp := MemoryGetProcAddress(aDLLHandle, 'SDL_strcmp');
  SDL_strdup := MemoryGetProcAddress(aDLLHandle, 'SDL_strdup');
  SDL_strlcat := MemoryGetProcAddress(aDLLHandle, 'SDL_strlcat');
  SDL_strlcpy := MemoryGetProcAddress(aDLLHandle, 'SDL_strlcpy');
  SDL_strlen := MemoryGetProcAddress(aDLLHandle, 'SDL_strlen');
  SDL_strlwr := MemoryGetProcAddress(aDLLHandle, 'SDL_strlwr');
  SDL_strncasecmp := MemoryGetProcAddress(aDLLHandle, 'SDL_strncasecmp');
  SDL_strncmp := MemoryGetProcAddress(aDLLHandle, 'SDL_strncmp');
  SDL_strrchr := MemoryGetProcAddress(aDLLHandle, 'SDL_strrchr');
  SDL_strrev := MemoryGetProcAddress(aDLLHandle, 'SDL_strrev');
  SDL_strstr := MemoryGetProcAddress(aDLLHandle, 'SDL_strstr');
  SDL_strtod := MemoryGetProcAddress(aDLLHandle, 'SDL_strtod');
  SDL_strtokr := MemoryGetProcAddress(aDLLHandle, 'SDL_strtokr');
  SDL_strtol := MemoryGetProcAddress(aDLLHandle, 'SDL_strtol');
  SDL_strtoll := MemoryGetProcAddress(aDLLHandle, 'SDL_strtoll');
  SDL_strtoul := MemoryGetProcAddress(aDLLHandle, 'SDL_strtoul');
  SDL_strtoull := MemoryGetProcAddress(aDLLHandle, 'SDL_strtoull');
  SDL_strupr := MemoryGetProcAddress(aDLLHandle, 'SDL_strupr');
  SDL_SurfaceHasColorKey := MemoryGetProcAddress(aDLLHandle, 'SDL_SurfaceHasColorKey');
  SDL_SurfaceHasRLE := MemoryGetProcAddress(aDLLHandle, 'SDL_SurfaceHasRLE');
  SDL_tan := MemoryGetProcAddress(aDLLHandle, 'SDL_tan');
  SDL_tanf := MemoryGetProcAddress(aDLLHandle, 'SDL_tanf');
  SDL_TextInputActive := MemoryGetProcAddress(aDLLHandle, 'SDL_TextInputActive');
  SDL_TextInputShown := MemoryGetProcAddress(aDLLHandle, 'SDL_TextInputShown');
  SDL_ThreadID := MemoryGetProcAddress(aDLLHandle, 'SDL_ThreadID');
  SDL_TLSCleanup := MemoryGetProcAddress(aDLLHandle, 'SDL_TLSCleanup');
  SDL_TLSCreate := MemoryGetProcAddress(aDLLHandle, 'SDL_TLSCreate');
  SDL_TLSGet := MemoryGetProcAddress(aDLLHandle, 'SDL_TLSGet');
  SDL_TLSSet := MemoryGetProcAddress(aDLLHandle, 'SDL_TLSSet');
  SDL_tolower := MemoryGetProcAddress(aDLLHandle, 'SDL_tolower');
  SDL_toupper := MemoryGetProcAddress(aDLLHandle, 'SDL_toupper');
  SDL_trunc := MemoryGetProcAddress(aDLLHandle, 'SDL_trunc');
  SDL_truncf := MemoryGetProcAddress(aDLLHandle, 'SDL_truncf');
  SDL_TryLockMutex := MemoryGetProcAddress(aDLLHandle, 'SDL_TryLockMutex');
  SDL_uitoa := MemoryGetProcAddress(aDLLHandle, 'SDL_uitoa');
  SDL_ulltoa := MemoryGetProcAddress(aDLLHandle, 'SDL_ulltoa');
  SDL_ultoa := MemoryGetProcAddress(aDLLHandle, 'SDL_ultoa');
  SDL_UnloadObject := MemoryGetProcAddress(aDLLHandle, 'SDL_UnloadObject');
  SDL_UnlockAudioDevice := MemoryGetProcAddress(aDLLHandle, 'SDL_UnlockAudioDevice');
  SDL_UnlockJoysticks := MemoryGetProcAddress(aDLLHandle, 'SDL_UnlockJoysticks');
  SDL_UnlockMutex := MemoryGetProcAddress(aDLLHandle, 'SDL_UnlockMutex');
  SDL_UnlockSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_UnlockSurface');
  SDL_UnlockTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_UnlockTexture');
  SDL_UpdateGamepads := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateGamepads');
  SDL_UpdateJoysticks := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateJoysticks');
  SDL_UpdateNVTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateNVTexture');
  SDL_UpdateSensors := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateSensors');
  SDL_UpdateTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateTexture');
  SDL_UpdateWindowSurface := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateWindowSurface');
  SDL_UpdateWindowSurfaceRects := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateWindowSurfaceRects');
  SDL_UpdateYUVTexture := MemoryGetProcAddress(aDLLHandle, 'SDL_UpdateYUVTexture');
  SDL_utf8strlcpy := MemoryGetProcAddress(aDLLHandle, 'SDL_utf8strlcpy');
  SDL_utf8strlen := MemoryGetProcAddress(aDLLHandle, 'SDL_utf8strlen');
  SDL_utf8strnlen := MemoryGetProcAddress(aDLLHandle, 'SDL_utf8strnlen');
  SDL_vasprintf := MemoryGetProcAddress(aDLLHandle, 'SDL_vasprintf');
  SDL_vsnprintf := MemoryGetProcAddress(aDLLHandle, 'SDL_vsnprintf');
  SDL_vsscanf := MemoryGetProcAddress(aDLLHandle, 'SDL_vsscanf');
  SDL_WaitEvent := MemoryGetProcAddress(aDLLHandle, 'SDL_WaitEvent');
  SDL_WaitEventTimeout := MemoryGetProcAddress(aDLLHandle, 'SDL_WaitEventTimeout');
  SDL_WaitThread := MemoryGetProcAddress(aDLLHandle, 'SDL_WaitThread');
  SDL_WarpMouseGlobal := MemoryGetProcAddress(aDLLHandle, 'SDL_WarpMouseGlobal');
  SDL_WarpMouseInWindow := MemoryGetProcAddress(aDLLHandle, 'SDL_WarpMouseInWindow');
  SDL_WasInit := MemoryGetProcAddress(aDLLHandle, 'SDL_WasInit');
  SDL_wcscasecmp := MemoryGetProcAddress(aDLLHandle, 'SDL_wcscasecmp');
  SDL_wcscmp := MemoryGetProcAddress(aDLLHandle, 'SDL_wcscmp');
  SDL_wcsdup := MemoryGetProcAddress(aDLLHandle, 'SDL_wcsdup');
  SDL_wcslcat := MemoryGetProcAddress(aDLLHandle, 'SDL_wcslcat');
  SDL_wcslcpy := MemoryGetProcAddress(aDLLHandle, 'SDL_wcslcpy');
  SDL_wcslen := MemoryGetProcAddress(aDLLHandle, 'SDL_wcslen');
  SDL_wcsncasecmp := MemoryGetProcAddress(aDLLHandle, 'SDL_wcsncasecmp');
  SDL_wcsncmp := MemoryGetProcAddress(aDLLHandle, 'SDL_wcsncmp');
  SDL_wcsstr := MemoryGetProcAddress(aDLLHandle, 'SDL_wcsstr');
  SDL_WriteBE16 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteBE16');
  SDL_WriteBE32 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteBE32');
  SDL_WriteBE64 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteBE64');
  SDL_WriteLE16 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteLE16');
  SDL_WriteLE32 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteLE32');
  SDL_WriteLE64 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteLE64');
  SDL_WriteU8 := MemoryGetProcAddress(aDLLHandle, 'SDL_WriteU8');
  stbi_convert_iphone_png_to_rgb := MemoryGetProcAddress(aDLLHandle, 'stbi_convert_iphone_png_to_rgb');
  stbi_convert_iphone_png_to_rgb_thread := MemoryGetProcAddress(aDLLHandle, 'stbi_convert_iphone_png_to_rgb_thread');
  stbi_failure_reason := MemoryGetProcAddress(aDLLHandle, 'stbi_failure_reason');
  stbi_flip_vertically_on_write := MemoryGetProcAddress(aDLLHandle, 'stbi_flip_vertically_on_write');
  stbi_hdr_to_ldr_gamma := MemoryGetProcAddress(aDLLHandle, 'stbi_hdr_to_ldr_gamma');
  stbi_hdr_to_ldr_scale := MemoryGetProcAddress(aDLLHandle, 'stbi_hdr_to_ldr_scale');
  stbi_image_free := MemoryGetProcAddress(aDLLHandle, 'stbi_image_free');
  stbi_info := MemoryGetProcAddress(aDLLHandle, 'stbi_info');
  stbi_info_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_info_from_callbacks');
  stbi_info_from_file := MemoryGetProcAddress(aDLLHandle, 'stbi_info_from_file');
  stbi_info_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_info_from_memory');
  stbi_is_16_bit := MemoryGetProcAddress(aDLLHandle, 'stbi_is_16_bit');
  stbi_is_16_bit_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_is_16_bit_from_callbacks');
  stbi_is_16_bit_from_file := MemoryGetProcAddress(aDLLHandle, 'stbi_is_16_bit_from_file');
  stbi_is_16_bit_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_is_16_bit_from_memory');
  stbi_is_hdr := MemoryGetProcAddress(aDLLHandle, 'stbi_is_hdr');
  stbi_is_hdr_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_is_hdr_from_callbacks');
  stbi_is_hdr_from_file := MemoryGetProcAddress(aDLLHandle, 'stbi_is_hdr_from_file');
  stbi_is_hdr_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_is_hdr_from_memory');
  stbi_ldr_to_hdr_gamma := MemoryGetProcAddress(aDLLHandle, 'stbi_ldr_to_hdr_gamma');
  stbi_ldr_to_hdr_scale := MemoryGetProcAddress(aDLLHandle, 'stbi_ldr_to_hdr_scale');
  stbi_load := MemoryGetProcAddress(aDLLHandle, 'stbi_load');
  stbi_load_16 := MemoryGetProcAddress(aDLLHandle, 'stbi_load_16');
  stbi_load_16_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_load_16_from_callbacks');
  stbi_load_16_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_load_16_from_memory');
  stbi_load_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_load_from_callbacks');
  stbi_load_from_file := MemoryGetProcAddress(aDLLHandle, 'stbi_load_from_file');
  stbi_load_from_file_16 := MemoryGetProcAddress(aDLLHandle, 'stbi_load_from_file_16');
  stbi_load_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_load_from_memory');
  stbi_load_gif_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_load_gif_from_memory');
  stbi_loadf := MemoryGetProcAddress(aDLLHandle, 'stbi_loadf');
  stbi_loadf_from_callbacks := MemoryGetProcAddress(aDLLHandle, 'stbi_loadf_from_callbacks');
  stbi_loadf_from_file := MemoryGetProcAddress(aDLLHandle, 'stbi_loadf_from_file');
  stbi_loadf_from_memory := MemoryGetProcAddress(aDLLHandle, 'stbi_loadf_from_memory');
  stbi_set_flip_vertically_on_load := MemoryGetProcAddress(aDLLHandle, 'stbi_set_flip_vertically_on_load');
  stbi_set_flip_vertically_on_load_thread := MemoryGetProcAddress(aDLLHandle, 'stbi_set_flip_vertically_on_load_thread');
  stbi_set_unpremultiply_on_load := MemoryGetProcAddress(aDLLHandle, 'stbi_set_unpremultiply_on_load');
  stbi_set_unpremultiply_on_load_thread := MemoryGetProcAddress(aDLLHandle, 'stbi_set_unpremultiply_on_load_thread');
  stbi_write_bmp := MemoryGetProcAddress(aDLLHandle, 'stbi_write_bmp');
  stbi_write_bmp_to_func := MemoryGetProcAddress(aDLLHandle, 'stbi_write_bmp_to_func');
  stbi_write_hdr := MemoryGetProcAddress(aDLLHandle, 'stbi_write_hdr');
  stbi_write_hdr_to_func := MemoryGetProcAddress(aDLLHandle, 'stbi_write_hdr_to_func');
  stbi_write_jpg := MemoryGetProcAddress(aDLLHandle, 'stbi_write_jpg');
  stbi_write_jpg_to_func := MemoryGetProcAddress(aDLLHandle, 'stbi_write_jpg_to_func');
  stbi_write_png := MemoryGetProcAddress(aDLLHandle, 'stbi_write_png');
  stbi_write_png_to_func := MemoryGetProcAddress(aDLLHandle, 'stbi_write_png_to_func');
  stbi_write_tga := MemoryGetProcAddress(aDLLHandle, 'stbi_write_tga');
  stbi_write_tga_to_func := MemoryGetProcAddress(aDLLHandle, 'stbi_write_tga_to_func');
  stbi_zlib_decode_buffer := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_buffer');
  stbi_zlib_decode_malloc := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_malloc');
  stbi_zlib_decode_malloc_guesssize := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_malloc_guesssize');
  stbi_zlib_decode_malloc_guesssize_headerflag := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_malloc_guesssize_headerflag');
  stbi_zlib_decode_noheader_buffer := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_noheader_buffer');
  stbi_zlib_decode_noheader_malloc := MemoryGetProcAddress(aDLLHandle, 'stbi_zlib_decode_noheader_malloc');
  stbtt_BakeFontBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_BakeFontBitmap');
  stbtt_CompareUTF8toUTF16_bigendian := MemoryGetProcAddress(aDLLHandle, 'stbtt_CompareUTF8toUTF16_bigendian');
  stbtt_FindGlyphIndex := MemoryGetProcAddress(aDLLHandle, 'stbtt_FindGlyphIndex');
  stbtt_FindMatchingFont := MemoryGetProcAddress(aDLLHandle, 'stbtt_FindMatchingFont');
  stbtt_FindSVGDoc := MemoryGetProcAddress(aDLLHandle, 'stbtt_FindSVGDoc');
  stbtt_FreeBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_FreeBitmap');
  stbtt_FreeSDF := MemoryGetProcAddress(aDLLHandle, 'stbtt_FreeSDF');
  stbtt_FreeShape := MemoryGetProcAddress(aDLLHandle, 'stbtt_FreeShape');
  stbtt_GetBakedQuad := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetBakedQuad');
  stbtt_GetCodepointBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointBitmap');
  stbtt_GetCodepointBitmapBox := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointBitmapBox');
  stbtt_GetCodepointBitmapBoxSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointBitmapBoxSubpixel');
  stbtt_GetCodepointBitmapSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointBitmapSubpixel');
  stbtt_GetCodepointBox := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointBox');
  stbtt_GetCodepointHMetrics := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointHMetrics');
  stbtt_GetCodepointKernAdvance := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointKernAdvance');
  stbtt_GetCodepointSDF := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointSDF');
  stbtt_GetCodepointShape := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointShape');
  stbtt_GetCodepointSVG := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetCodepointSVG');
  stbtt_GetFontBoundingBox := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetFontBoundingBox');
  stbtt_GetFontNameString := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetFontNameString');
  stbtt_GetFontOffsetForIndex := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetFontOffsetForIndex');
  stbtt_GetFontVMetrics := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetFontVMetrics');
  stbtt_GetFontVMetricsOS2 := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetFontVMetricsOS2');
  stbtt_GetGlyphBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphBitmap');
  stbtt_GetGlyphBitmapBox := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphBitmapBox');
  stbtt_GetGlyphBitmapBoxSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphBitmapBoxSubpixel');
  stbtt_GetGlyphBitmapSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphBitmapSubpixel');
  stbtt_GetGlyphBox := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphBox');
  stbtt_GetGlyphHMetrics := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphHMetrics');
  stbtt_GetGlyphKernAdvance := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphKernAdvance');
  stbtt_GetGlyphSDF := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphSDF');
  stbtt_GetGlyphShape := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphShape');
  stbtt_GetGlyphSVG := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetGlyphSVG');
  stbtt_GetKerningTable := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetKerningTable');
  stbtt_GetKerningTableLength := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetKerningTableLength');
  stbtt_GetNumberOfFonts := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetNumberOfFonts');
  stbtt_GetPackedQuad := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetPackedQuad');
  stbtt_GetScaledFontVMetrics := MemoryGetProcAddress(aDLLHandle, 'stbtt_GetScaledFontVMetrics');
  stbtt_InitFont := MemoryGetProcAddress(aDLLHandle, 'stbtt_InitFont');
  stbtt_IsGlyphEmpty := MemoryGetProcAddress(aDLLHandle, 'stbtt_IsGlyphEmpty');
  stbtt_MakeCodepointBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeCodepointBitmap');
  stbtt_MakeCodepointBitmapSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeCodepointBitmapSubpixel');
  stbtt_MakeCodepointBitmapSubpixelPrefilter := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeCodepointBitmapSubpixelPrefilter');
  stbtt_MakeGlyphBitmap := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeGlyphBitmap');
  stbtt_MakeGlyphBitmapSubpixel := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeGlyphBitmapSubpixel');
  stbtt_MakeGlyphBitmapSubpixelPrefilter := MemoryGetProcAddress(aDLLHandle, 'stbtt_MakeGlyphBitmapSubpixelPrefilter');
  stbtt_PackBegin := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackBegin');
  stbtt_PackEnd := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackEnd');
  stbtt_PackFontRange := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackFontRange');
  stbtt_PackFontRanges := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackFontRanges');
  stbtt_PackFontRangesGatherRects := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackFontRangesGatherRects');
  stbtt_PackFontRangesPackRects := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackFontRangesPackRects');
  stbtt_PackFontRangesRenderIntoRects := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackFontRangesRenderIntoRects');
  stbtt_PackSetOversampling := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackSetOversampling');
  stbtt_PackSetSkipMissingCodepoints := MemoryGetProcAddress(aDLLHandle, 'stbtt_PackSetSkipMissingCodepoints');
  stbtt_Rasterize := MemoryGetProcAddress(aDLLHandle, 'stbtt_Rasterize');
  stbtt_ScaleForMappingEmToPixels := MemoryGetProcAddress(aDLLHandle, 'stbtt_ScaleForMappingEmToPixels');
  stbtt_ScaleForPixelHeight := MemoryGetProcAddress(aDLLHandle, 'stbtt_ScaleForPixelHeight');
  tmx_col_to_bytes := MemoryGetProcAddress(aDLLHandle, 'tmx_col_to_bytes');
  tmx_col_to_floats := MemoryGetProcAddress(aDLLHandle, 'tmx_col_to_floats');
  tmx_find_layer_by_id := MemoryGetProcAddress(aDLLHandle, 'tmx_find_layer_by_id');
  tmx_find_layer_by_name := MemoryGetProcAddress(aDLLHandle, 'tmx_find_layer_by_name');
  tmx_free_resource_manager := MemoryGetProcAddress(aDLLHandle, 'tmx_free_resource_manager');
  tmx_get_property := MemoryGetProcAddress(aDLLHandle, 'tmx_get_property');
  tmx_get_tile := MemoryGetProcAddress(aDLLHandle, 'tmx_get_tile');
  tmx_load := MemoryGetProcAddress(aDLLHandle, 'tmx_load');
  tmx_load_buffer := MemoryGetProcAddress(aDLLHandle, 'tmx_load_buffer');
  tmx_load_callback := MemoryGetProcAddress(aDLLHandle, 'tmx_load_callback');
  tmx_load_fd := MemoryGetProcAddress(aDLLHandle, 'tmx_load_fd');
  tmx_load_template := MemoryGetProcAddress(aDLLHandle, 'tmx_load_template');
  tmx_load_template_buffer := MemoryGetProcAddress(aDLLHandle, 'tmx_load_template_buffer');
  tmx_load_template_callback := MemoryGetProcAddress(aDLLHandle, 'tmx_load_template_callback');
  tmx_load_template_fd := MemoryGetProcAddress(aDLLHandle, 'tmx_load_template_fd');
  tmx_load_tileset := MemoryGetProcAddress(aDLLHandle, 'tmx_load_tileset');
  tmx_load_tileset_buffer := MemoryGetProcAddress(aDLLHandle, 'tmx_load_tileset_buffer');
  tmx_load_tileset_callback := MemoryGetProcAddress(aDLLHandle, 'tmx_load_tileset_callback');
  tmx_load_tileset_fd := MemoryGetProcAddress(aDLLHandle, 'tmx_load_tileset_fd');
  tmx_make_resource_manager := MemoryGetProcAddress(aDLLHandle, 'tmx_make_resource_manager');
  tmx_map_free := MemoryGetProcAddress(aDLLHandle, 'tmx_map_free');
  tmx_perror := MemoryGetProcAddress(aDLLHandle, 'tmx_perror');
  tmx_property_foreach := MemoryGetProcAddress(aDLLHandle, 'tmx_property_foreach');
  tmx_rcmgr_load := MemoryGetProcAddress(aDLLHandle, 'tmx_rcmgr_load');
  tmx_rcmgr_load_buffer := MemoryGetProcAddress(aDLLHandle, 'tmx_rcmgr_load_buffer');
  tmx_rcmgr_load_callback := MemoryGetProcAddress(aDLLHandle, 'tmx_rcmgr_load_callback');
  tmx_rcmgr_load_fd := MemoryGetProcAddress(aDLLHandle, 'tmx_rcmgr_load_fd');
  tmx_strerr := MemoryGetProcAddress(aDLLHandle, 'tmx_strerr');
  tmx_img_load_func := MemoryGetProcAddress(aDLLHandle, 'tmx_img_load_func');
  tmx_img_free_func := MemoryGetProcAddress(aDLLHandle, 'tmx_img_free_func');
  tmx_alloc_func := MemoryGetProcAddress(aDLLHandle, 'tmx_alloc_func');
  tmx_free_func := MemoryGetProcAddress(aDLLHandle, 'tmx_free_func');
  zipClose := MemoryGetProcAddress(aDLLHandle, 'zipClose');
  zipCloseFileInZip := MemoryGetProcAddress(aDLLHandle, 'zipCloseFileInZip');
  zipOpen := MemoryGetProcAddress(aDLLHandle, 'zipOpen');
  zipOpenNewFileInZip3 := MemoryGetProcAddress(aDLLHandle, 'zipOpenNewFileInZip3');
  zipWriteInFileInZip := MemoryGetProcAddress(aDLLHandle, 'zipWriteInFileInZip');
{$ENDREGION}
end;

var
  DllHandle: Pointer = nil;
  DllFilename: string = '';

procedure AbortDLL;
begin
  Halt;
end;

procedure LoadDLL;
const
  cDllResName = '4f26141a090c46ce9f22bf0f11d0f0fd';
var
  LResStream: TResourceStream;
begin
  if Assigned(DllHandle) then Exit;
  if not Boolean((FindResource(HInstance, PChar(cDllResName), RT_RCDATA) <> 0)) then AbortDLL;
  LResStream := TResourceStream.Create(HInstance, cDLLResName, RT_RCDATA);
  try
    LResStream.Position := 0;
    DllHandle := MemoryLoadLibary(LResStream.Memory);
  finally
    LResStream.Free;
  end;
  if not Assigned(DllHandle) then Exit;
  GetExports(DllHandle);
end;

procedure UnloadDLL;
begin
  if not Assigned(DllHandle) then Exit;
  MemoryFreeLibrary(DllHandle);
  DllHandle := nil;
end;

initialization
begin
  ReportMemoryLeaksOnShutdown := True;
  LoadDLL;
end;

finalization
begin
  UnloadDLL;
end;

end.
