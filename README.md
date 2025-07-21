# SWL Lua Runner

This excecutable can be used to make 2D games. The program is heavily inspired by [Love2D](https://github.com/love2d/love)
To use it, simply type the following command:

```bash
 swl2d path/to/your/root/lua/file.lua [options...]
```

The current options are:

- --title "[your game title]"
- --width [width of your game window]
- --height [height of your game window]

Currently, your root file should look something like this:

```lua
function swgtk.OnCreate() 
    -- startup code here
end

function swgtk.OnUpdate(deltaTime)
    -- called every frame
end
```

## MIT License

Copyright (c) 2025 Samuel Bridgham

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
