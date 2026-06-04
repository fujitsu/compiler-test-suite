#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed int v3 (signed short, unsigned int, unsigned int, signed char);
extern signed int (*v4) (signed short, unsigned int, unsigned int, signed char);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
unsigned char v7 (signed int, unsigned int, signed char);
unsigned char (*v8) (signed int, unsigned int, signed char) = v7;
extern signed short v9 (signed int, unsigned char);
extern signed short (*v10) (signed int, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern void v13 (signed char, signed char, signed int, unsigned short);
extern void (*v14) (signed char, signed char, signed int, unsigned short);
extern unsigned char v15 (signed short, signed short, unsigned short);
extern unsigned char (*v16) (signed short, signed short, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed char v23 (unsigned char, unsigned char, signed char);
signed char (*v24) (unsigned char, unsigned char, signed char) = v23;
signed char v25 (unsigned char);
signed char (*v26) (unsigned char) = v25;
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed short v29 (unsigned short, signed int);
extern signed short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v49 = 2;
signed int v48 = 0;
unsigned short v47 = 6;

signed char v25 (unsigned char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 3U;
unsigned short v52 = 0;
unsigned short v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned char v54, unsigned char v55, signed char v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 5U;
unsigned int v58 = 2U;
unsigned short v57 = 5;
trace++;
switch (trace)
{
case 2: 
return 0;
case 4: 
return 2;
case 8: 
return 2;
case 11: 
return v56;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed short v62 = 0;
signed int v61 = 2;
signed short v60 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v63, unsigned int v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 6U;
unsigned char v67 = 1;
signed char v66 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
