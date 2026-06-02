#include <stdlib.h>
extern void v1 (signed char);
extern void (*v2) (signed char);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern unsigned short v5 (unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned short, unsigned char);
signed short v7 (unsigned short, unsigned int, unsigned int, signed int);
signed short (*v8) (unsigned short, unsigned int, unsigned int, signed int) = v7;
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (signed int, signed int, unsigned short, unsigned char);
extern void (*v12) (signed int, signed int, unsigned short, unsigned char);
extern signed char v13 (signed int, signed char, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned char, signed int, unsigned int);
extern signed int v19 (unsigned char, unsigned int, unsigned int, signed short);
extern signed int (*v20) (unsigned char, unsigned int, unsigned int, signed short);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
unsigned int v23 (unsigned int, signed short, unsigned int, unsigned int);
unsigned int (*v24) (unsigned int, signed short, unsigned int, unsigned int) = v23;
extern void v25 (unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
void v29 (signed short, signed char, signed char, unsigned short);
void (*v30) (signed short, signed char, signed char, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v51 = 3;
unsigned short v50 = 3;
unsigned char v49 = 7;

void v29 (signed short v52, signed char v53, signed char v54, unsigned short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -3;
unsigned int v57 = 7U;
signed char v56 = 1;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned int v59, signed short v60, unsigned int v61, unsigned int v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 1U;
unsigned int v64 = 0U;
unsigned char v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (void)
{
{
for (;;) {
signed short v68 = -2;
unsigned char v67 = 1;
signed short v66 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v69, unsigned int v70, unsigned int v71, signed int v72)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 1;
unsigned int v74 = 1U;
unsigned int v73 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
