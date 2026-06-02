#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int, signed int, unsigned short, unsigned int);
extern signed short (*v6) (unsigned int, signed int, unsigned short, unsigned int);
unsigned int v7 (unsigned int, signed int, signed int, signed int);
unsigned int (*v8) (unsigned int, signed int, signed int, signed int) = v7;
extern unsigned short v9 (unsigned int, unsigned short, signed short, unsigned short);
extern unsigned short (*v10) (unsigned int, unsigned short, signed short, unsigned short);
extern signed short v11 (unsigned int, signed char, signed char, unsigned char);
extern signed short (*v12) (unsigned int, signed char, signed char, unsigned char);
extern unsigned short v13 (signed int, signed int, unsigned char);
extern unsigned short (*v14) (signed int, signed int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (unsigned int, signed char, unsigned int);
extern void (*v18) (unsigned int, signed char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
signed int v21 (unsigned short, signed char);
signed int (*v22) (unsigned short, signed char) = v21;
extern unsigned int v23 (unsigned int);
extern unsigned int (*v24) (unsigned int);
extern unsigned char v25 (unsigned short, unsigned int);
extern unsigned char (*v26) (unsigned short, unsigned int);
unsigned char v27 (unsigned short);
unsigned char (*v28) (unsigned short) = v27;
extern unsigned char v29 (unsigned char, signed int, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v47 = -2;
signed int v46 = 0;
unsigned int v45 = 0U;

unsigned char v27 (unsigned short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed char v51 = 2;
unsigned short v50 = 1;
signed char v49 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned short v52, signed char v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed short v56 = 0;
signed char v55 = 0;
signed short v54 = 0;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

unsigned int v7 (unsigned int v57, signed int v58, signed int v59, signed int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned char v63 = 3;
unsigned int v62 = 0U;
unsigned int v61 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
