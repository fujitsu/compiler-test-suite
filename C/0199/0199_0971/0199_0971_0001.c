#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned char);
extern unsigned int (*v2) (unsigned short, signed int, unsigned char);
extern void v3 (unsigned short);
extern void (*v4) (unsigned short);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
signed char v9 (unsigned int, signed char, signed short, unsigned int);
signed char (*v10) (unsigned int, signed char, signed short, unsigned int) = v9;
extern signed int v11 (unsigned char, signed int, unsigned short, signed char);
extern signed int (*v12) (unsigned char, signed int, unsigned short, signed char);
signed int v13 (unsigned int, unsigned short, unsigned int);
signed int (*v14) (unsigned int, unsigned short, unsigned int) = v13;
void v15 (void);
void (*v16) (void) = v15;
extern signed char v17 (unsigned char, signed char);
extern signed char (*v18) (unsigned char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (signed short, unsigned char);
extern signed int (*v22) (signed short, unsigned char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned char);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
signed int v29 (unsigned short, signed short, signed short, unsigned char);
signed int (*v30) (unsigned short, signed short, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 7;
signed short v59 = -1;
unsigned int v58 = 0U;

signed int v29 (unsigned short v61, signed short v62, signed short v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 4U;
unsigned int v66 = 7U;
unsigned short v65 = 0;
trace++;
switch (trace)
{
case 3: 
return -4;
default: abort ();
}
}
}
}

void v15 (void)
{
{
for (;;) {
unsigned short v70 = 1;
signed char v69 = 1;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed int v13 (unsigned int v71, unsigned short v72, unsigned int v73)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned int v76 = 7U;
unsigned short v75 = 4;
unsigned int v74 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v77, signed char v78, signed short v79, unsigned int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 2;
signed int v82 = -3;
signed int v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
