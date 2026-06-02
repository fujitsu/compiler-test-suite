#include <stdlib.h>
extern void v1 (signed short);
extern void (*v2) (signed short);
unsigned short v3 (unsigned short, unsigned char, signed char);
unsigned short (*v4) (unsigned short, unsigned char, signed char) = v3;
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed short, signed int, signed int, unsigned char);
extern signed short (*v10) (signed short, signed int, signed int, unsigned char);
extern void v11 (unsigned char, unsigned char, signed char);
extern void (*v12) (unsigned char, unsigned char, signed char);
extern unsigned short v15 (unsigned int, unsigned int, signed char, signed int);
extern unsigned short (*v16) (unsigned int, unsigned int, signed char, signed int);
unsigned int v17 (signed short, unsigned short, unsigned short);
unsigned int (*v18) (signed short, unsigned short, unsigned short) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
extern unsigned char v23 (signed char);
extern unsigned char (*v24) (signed char);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
void v29 (signed char, signed short);
void (*v30) (signed char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 0;
signed int v56 = -1;
signed char v55 = 0;

void v29 (signed char v58, signed short v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -1;
unsigned char v61 = 4;
unsigned short v60 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed short v63, unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -4;
signed short v67 = 1;
unsigned int v66 = 6U;
trace++;
switch (trace)
{
case 3: 
return 6U;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned short v69, unsigned char v70, signed char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed int v74 = -4;
signed int v73 = 3;
unsigned short v72 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
