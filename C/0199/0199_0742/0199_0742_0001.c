#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned char v7 (unsigned char, signed char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed char, unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern void v11 (unsigned int, signed int, signed int);
extern void (*v12) (unsigned int, signed int, signed int);
extern unsigned char v13 (signed int, signed int, unsigned char);
extern unsigned char (*v14) (signed int, signed int, unsigned char);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
unsigned char v17 (signed short, unsigned int, signed char, unsigned char);
unsigned char (*v18) (signed short, unsigned int, signed char, unsigned char) = v17;
signed char v21 (signed int, unsigned short);
signed char (*v22) (signed int, unsigned short) = v21;
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed short v27 (unsigned char, signed int);
signed short (*v28) (unsigned char, signed int) = v27;
extern signed int v29 (signed char, unsigned int, signed int);
extern signed int (*v30) (signed char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 7;
unsigned char v56 = 6;
signed int v55 = 2;

signed short v27 (unsigned char v58, signed int v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = 2;
signed char v61 = -1;
signed int v60 = -3;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed char v21 (signed int v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 6;
signed int v66 = -3;
signed short v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v68, unsigned int v69, signed char v70, unsigned char v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 2;
unsigned char v73 = 3;
unsigned short v72 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
