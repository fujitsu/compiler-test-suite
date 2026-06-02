#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned char v5 (signed int, unsigned int, unsigned int);
extern unsigned char (*v6) (signed int, unsigned int, unsigned int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed short v13 (unsigned short, signed int, signed char, signed short);
extern signed short (*v14) (unsigned short, signed int, signed char, signed short);
void v15 (unsigned short, unsigned int, unsigned short);
void (*v16) (unsigned short, unsigned int, unsigned short) = v15;
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned char v21 (signed short, signed int);
extern unsigned char (*v22) (signed short, signed int);
unsigned int v23 (unsigned char, signed int, unsigned short, signed int);
unsigned int (*v24) (unsigned char, signed int, unsigned short, signed int) = v23;
extern signed char v25 (unsigned short, signed char, signed int, signed int);
extern signed char (*v26) (unsigned short, signed char, signed int, signed int);
extern void v27 (void);
extern void (*v28) (void);
unsigned char v29 (signed int, unsigned char, signed char);
unsigned char (*v30) (signed int, unsigned char, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v47 = 2;
signed int v46 = 1;
unsigned short v45 = 1;

unsigned char v29 (signed int v48, unsigned char v49, signed char v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned short v52 = 6;
unsigned int v51 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v54, signed int v55, unsigned short v56, signed int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 2;
signed char v59 = 0;
signed int v58 = 2;
trace++;
switch (trace)
{
case 2: 
return 7U;
default: abort ();
}
}
}
}

void v15 (unsigned short v61, unsigned int v62, unsigned short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -4;
signed short v65 = 0;
unsigned int v64 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
