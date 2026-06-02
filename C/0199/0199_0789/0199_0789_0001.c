#include <stdlib.h>
extern signed char v1 (signed int);
extern signed char (*v2) (signed int);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned char v5 (unsigned short, unsigned char);
unsigned char (*v6) (unsigned short, unsigned char) = v5;
extern signed char v7 (signed char, unsigned int, unsigned short, unsigned int);
extern signed char (*v8) (signed char, unsigned int, unsigned short, unsigned int);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern unsigned int v11 (signed int, unsigned short, signed char);
extern unsigned int (*v12) (signed int, unsigned short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, unsigned int, unsigned int);
extern signed short (*v18) (signed char, signed int, unsigned int, unsigned int);
signed char v19 (void);
signed char (*v20) (void) = v19;
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed short v25 (unsigned char, unsigned short, unsigned char, signed char);
extern signed short (*v26) (unsigned char, unsigned short, unsigned char, signed char);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern void v29 (signed short, signed short, unsigned char, unsigned int);
extern void (*v30) (signed short, signed short, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v53 = 1;
signed char v52 = 0;
signed short v51 = 0;

unsigned short v27 (void)
{
{
for (;;) {
unsigned short v56 = 7;
unsigned int v55 = 0U;
unsigned char v54 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (void)
{
{
for (;;) {
unsigned int v59 = 3U;
signed int v58 = -3;
unsigned short v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v60, unsigned char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = 0;
signed char v63 = -4;
signed int v62 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed int v65;
unsigned short v66;
signed char v67;
unsigned int v68;
v65 = v62 + v64;
v66 = 3 + 4;
v67 = 0 - v63;
v68 = v11 (v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}
