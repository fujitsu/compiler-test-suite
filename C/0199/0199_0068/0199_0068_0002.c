#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
signed short v5 (signed char, unsigned char, unsigned char);
signed short (*v6) (signed char, unsigned char, unsigned char) = v5;
extern signed int v7 (signed short, signed int);
extern signed int (*v8) (signed short, signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern unsigned char v11 (signed short, unsigned char, signed int);
extern unsigned char (*v12) (signed short, unsigned char, signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern unsigned char v15 (signed int, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
extern void v19 (signed int, unsigned int, signed char, signed char);
extern void (*v20) (signed int, unsigned int, signed char, signed char);
void v21 (unsigned int, signed int, unsigned short, signed int);
void (*v22) (unsigned int, signed int, unsigned short, signed int) = v21;
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
signed char v25 (unsigned short, unsigned short);
signed char (*v26) (unsigned short, unsigned short) = v25;
unsigned char v27 (unsigned short, unsigned short, unsigned short, unsigned int);
unsigned char (*v28) (unsigned short, unsigned short, unsigned short, unsigned int) = v27;
extern unsigned int v29 (signed char, signed int);
extern unsigned int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = 0;
signed char v69 = -4;
unsigned short v68 = 5;

unsigned char v27 (unsigned short v71, unsigned short v72, unsigned short v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned int v77 = 0U;
signed int v76 = -2;
unsigned char v75 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned short v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = 2;
unsigned char v81 = 6;
unsigned int v80 = 7U;
trace++;
switch (trace)
{
case 3: 
return 0;
default: abort ();
}
}
}
}

void v21 (unsigned int v83, signed int v84, unsigned short v85, signed int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned int v89 = 6U;
unsigned int v88 = 0U;
unsigned char v87 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
unsigned int v92 = 0U;
unsigned int v91 = 1U;
signed char v90 = -2;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

signed short v5 (signed char v93, unsigned char v94, unsigned char v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = 3;
unsigned int v97 = 4U;
unsigned int v96 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
