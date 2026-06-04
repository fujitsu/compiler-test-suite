#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int);
extern unsigned short (*v2) (signed short, unsigned int);
unsigned short v3 (unsigned short, unsigned short);
unsigned short (*v4) (unsigned short, unsigned short) = v3;
unsigned short v5 (signed int, unsigned int);
unsigned short (*v6) (signed int, unsigned int) = v5;
extern signed char v7 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned char, unsigned short);
extern unsigned char v9 (signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed int, unsigned char, signed char);
signed char v11 (signed int, unsigned int, unsigned short);
signed char (*v12) (signed int, unsigned int, unsigned short) = v11;
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern signed short v17 (signed char, signed int);
extern signed short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, unsigned short, signed int, signed short);
extern signed short (*v20) (unsigned short, unsigned short, signed int, signed short);
extern signed short v21 (unsigned int, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int);
extern void v23 (signed char, unsigned int, unsigned char);
extern void (*v24) (signed char, unsigned int, unsigned char);
extern unsigned char v25 (signed char, signed short, unsigned short);
extern unsigned char (*v26) (signed char, signed short, unsigned short);
extern unsigned short v27 (signed short, signed short, signed int);
extern unsigned short (*v28) (signed short, signed short, signed int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v55 = 3;
unsigned int v54 = 3U;
unsigned char v53 = 5;

signed char v11 (signed int v56, unsigned int v57, unsigned short v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 5;
unsigned short v60 = 1;
signed int v59 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 2;
signed char v65 = 0;
unsigned short v64 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v67, unsigned short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned int v71 = 2U;
unsigned char v70 = 7;
signed int v69 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
