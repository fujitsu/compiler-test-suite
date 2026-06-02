#include <stdlib.h>
extern signed short v1 (signed short, unsigned char, unsigned char);
extern signed short (*v2) (signed short, unsigned char, unsigned char);
signed char v3 (unsigned char, signed short, unsigned char);
signed char (*v4) (unsigned char, signed short, unsigned char) = v3;
extern unsigned short v5 (unsigned char, unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned char, unsigned short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed int v9 (unsigned int, signed int, signed char, unsigned int);
extern signed int (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned char v11 (signed short, signed int, unsigned short);
extern unsigned char (*v12) (signed short, signed int, unsigned short);
extern signed int v13 (unsigned char);
extern signed int (*v14) (unsigned char);
extern void v15 (signed short, unsigned int, unsigned char, unsigned char);
extern void (*v16) (signed short, unsigned int, unsigned char, unsigned char);
extern signed int v17 (unsigned int, signed short, unsigned char, unsigned char);
extern signed int (*v18) (unsigned int, signed short, unsigned char, unsigned char);
extern unsigned short v19 (unsigned int, unsigned short, signed char, signed short);
extern unsigned short (*v20) (unsigned int, unsigned short, signed char, signed short);
signed short v21 (unsigned short, signed char, unsigned int, signed char);
signed short (*v22) (unsigned short, signed char, unsigned int, signed char) = v21;
extern unsigned int v23 (signed int, unsigned short, unsigned char);
extern unsigned int (*v24) (signed int, unsigned short, unsigned char);
unsigned int v25 (signed char);
unsigned int (*v26) (signed char) = v25;
extern signed int v27 (unsigned short, unsigned char, signed short, unsigned short);
extern signed int (*v28) (unsigned short, unsigned char, signed short, unsigned short);
extern unsigned int v29 (signed char, signed char);
extern unsigned int (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v57 = 4;
signed short v56 = -4;
unsigned int v55 = 4U;

unsigned int v25 (signed char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 0U;
unsigned int v60 = 7U;
unsigned int v59 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned short v62, signed char v63, unsigned int v64, signed char v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 1U;
signed char v67 = -1;
unsigned char v66 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned char v69, signed short v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 3;
unsigned char v73 = 6;
signed short v72 = 2;
trace++;
switch (trace)
{
case 2: 
return 3;
case 7: 
return -2;
default: abort ();
}
}
}
}
