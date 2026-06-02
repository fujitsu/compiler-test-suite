#include <stdlib.h>
extern void v1 (unsigned char, signed short, unsigned char);
extern void (*v2) (unsigned char, signed short, unsigned char);
extern signed char v3 (signed int);
extern signed char (*v4) (signed int);
extern signed int v5 (void);
extern signed int (*v6) (void);
signed int v7 (signed int, signed int);
signed int (*v8) (signed int, signed int) = v7;
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
unsigned short v21 (unsigned char, signed short);
unsigned short (*v22) (unsigned char, signed short) = v21;
signed int v23 (unsigned char);
signed int (*v24) (unsigned char) = v23;
extern void v27 (unsigned char, signed char);
extern void (*v28) (unsigned char, signed char);
void v29 (unsigned short, signed int);
void (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v45 = -2;
unsigned int v44 = 3U;
signed char v43 = -1;

void v29 (unsigned short v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1;
signed short v49 = 1;
signed char v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 1;
signed short v53 = -1;
unsigned short v52 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v55, signed short v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 6U;
signed char v58 = 1;
unsigned int v57 = 5U;
trace++;
switch (trace)
{
case 8: 
return 5;
default: abort ();
}
}
}
}

unsigned char v9 (void)
{
{
for (;;) {
signed short v62 = 0;
signed short v61 = -2;
unsigned short v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed int v63, signed int v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 5;
unsigned char v66 = 2;
signed char v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
