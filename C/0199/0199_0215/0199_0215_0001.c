#include <stdlib.h>
extern unsigned char v1 (unsigned char, signed short);
extern unsigned char (*v2) (unsigned char, signed short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (signed char, unsigned short, signed char, unsigned char);
extern unsigned int (*v6) (signed char, unsigned short, signed char, unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
signed short v11 (signed char, unsigned short, unsigned char);
signed short (*v12) (signed char, unsigned short, unsigned char) = v11;
extern signed int v13 (unsigned short, signed int, signed char, signed short);
extern signed int (*v14) (unsigned short, signed int, signed char, signed short);
signed int v15 (unsigned int, unsigned int, signed short, unsigned short);
signed int (*v16) (unsigned int, unsigned int, signed short, unsigned short) = v15;
extern signed short v19 (unsigned int, unsigned int, unsigned short, signed int);
extern signed short (*v20) (unsigned int, unsigned int, unsigned short, signed int);
signed int v21 (unsigned int, signed int, signed short, signed int);
signed int (*v22) (unsigned int, signed int, signed short, signed int) = v21;
void v23 (signed char);
void (*v24) (signed char) = v23;
extern unsigned int v27 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned int (*v28) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned int, unsigned char, unsigned char);
extern signed int (*v30) (unsigned int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v41 = 3U;
unsigned char v40 = 3;
signed short v39 = 2;

void v23 (signed char v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 4;
signed char v44 = -2;
signed short v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v46, signed int v47, signed short v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 0;
signed short v51 = 3;
unsigned short v50 = 7;
trace++;
switch (trace)
{
case 4: 
return v49;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v53, unsigned int v54, signed short v55, unsigned short v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed char v59 = -4;
unsigned short v58 = 2;
unsigned int v57 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed char v60, unsigned short v61, unsigned char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -3;
unsigned short v64 = 6;
signed char v63 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned char v68 = 0;
unsigned short v67 = 1;
signed short v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
