#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (signed int, unsigned int, unsigned short);
extern signed char (*v6) (signed int, unsigned int, unsigned short);
extern signed short v7 (signed int, signed char);
extern signed short (*v8) (signed int, signed char);
void v9 (unsigned int);
void (*v10) (unsigned int) = v9;
extern signed short v11 (signed char, signed short, unsigned int, unsigned short);
extern signed short (*v12) (signed char, signed short, unsigned int, unsigned short);
void v13 (unsigned int, unsigned short, signed int);
void (*v14) (unsigned int, unsigned short, signed int) = v13;
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
unsigned char v17 (unsigned char, unsigned short, signed char, unsigned short);
unsigned char (*v18) (unsigned char, unsigned short, signed char, unsigned short) = v17;
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed char v21 (unsigned char, unsigned short);
extern signed char (*v22) (unsigned char, unsigned short);
extern unsigned char v23 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v24) (signed short, signed int, unsigned short, unsigned char);
extern signed int v25 (signed char, unsigned short);
extern signed int (*v26) (signed char, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
signed short v29 (unsigned short, signed short, unsigned short);
signed short (*v30) (unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v39 = 1;
unsigned char v38 = 3;
unsigned short v37 = 7;

signed short v29 (unsigned short v40, signed short v41, unsigned short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -4;
unsigned short v44 = 6;
signed char v43 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v48 = 2;
signed char v47 = 0;
unsigned short v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v49, unsigned short v50, signed char v51, unsigned short v52)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 5U;
signed short v54 = -3;
unsigned short v53 = 3;
trace++;
switch (trace)
{
case 11: 
return v49;
default: abort ();
}
}
}
}

void v13 (unsigned int v56, unsigned short v57, signed int v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
unsigned char v61 = 2;
unsigned short v60 = 2;
signed char v59 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 1;
signed int v64 = -4;
signed short v63 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
