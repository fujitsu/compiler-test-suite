#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed short, signed int, unsigned char, signed int);
extern void (*v4) (signed short, signed int, unsigned char, signed int);
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
unsigned short v7 (unsigned int, unsigned short, signed char);
unsigned short (*v8) (unsigned int, unsigned short, signed char) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (signed short, signed short, signed int, signed int);
extern void (*v14) (signed short, signed short, signed int, signed int);
extern void v15 (signed int, unsigned int, signed char, unsigned int);
extern void (*v16) (signed int, unsigned int, signed char, unsigned int);
extern void v19 (signed char, unsigned char, unsigned int, unsigned char);
extern void (*v20) (signed char, unsigned char, unsigned int, unsigned char);
unsigned int v21 (signed short, signed short, unsigned short, unsigned char);
unsigned int (*v22) (signed short, signed short, unsigned short, unsigned char) = v21;
extern signed int v23 (unsigned char);
extern signed int (*v24) (unsigned char);
extern signed short v25 (unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (unsigned int, unsigned char, unsigned int);
unsigned int v27 (signed char, signed int, signed int);
unsigned int (*v28) (signed char, signed int, signed int) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v49 = 6U;
signed char v48 = 1;
unsigned char v47 = 7;

unsigned int v27 (signed char v50, signed int v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 1;
unsigned short v54 = 7;
signed char v53 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v56, signed short v57, unsigned short v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -2;
unsigned char v61 = 0;
signed int v60 = 0;
trace++;
switch (trace)
{
case 1: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v7 (unsigned int v63, unsigned short v64, signed char v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -1;
signed char v67 = 0;
unsigned short v66 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
