#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, unsigned char);
extern signed int (*v2) (unsigned int, unsigned short, unsigned char);
extern signed char v3 (unsigned short, unsigned char);
extern signed char (*v4) (unsigned short, unsigned char);
unsigned int v5 (signed short, unsigned char, unsigned char);
unsigned int (*v6) (signed short, unsigned char, unsigned char) = v5;
extern unsigned char v7 (unsigned char, signed short, unsigned int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int);
void v9 (void);
void (*v10) (void) = v9;
unsigned char v11 (void);
unsigned char (*v12) (void) = v11;
extern signed char v13 (unsigned short, signed short);
extern signed char (*v14) (unsigned short, signed short);
extern signed int v15 (signed short, signed int, signed char, signed short);
extern signed int (*v16) (signed short, signed int, signed char, signed short);
unsigned char v17 (signed short);
unsigned char (*v18) (signed short) = v17;
signed short v19 (signed char, signed int);
signed short (*v20) (signed char, signed int) = v19;
extern signed int v21 (signed char, unsigned char);
extern signed int (*v22) (signed char, unsigned char);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
extern void v25 (unsigned int, unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int, unsigned int);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
unsigned char v29 (signed int, signed short);
unsigned char (*v30) (signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v52 = 0;
signed char v51 = 3;
unsigned char v50 = 6;

unsigned char v29 (signed int v53, signed short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 0;
signed int v56 = -3;
signed int v55 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
unsigned int v60 = 7U;
signed char v59 = -3;
unsigned char v58 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed char v61, signed int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 4;
signed char v64 = -2;
unsigned int v63 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 6U;
unsigned short v68 = 7;
signed char v67 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (void)
{
{
for (;;) {
signed char v72 = 1;
unsigned short v71 = 1;
unsigned int v70 = 4U;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
signed char v75 = -3;
signed int v74 = -2;
unsigned char v73 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v76, unsigned char v77, unsigned char v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned int v81 = 7U;
unsigned int v80 = 1U;
signed short v79 = -4;
trace++;
switch (trace)
{
case 3: 
return v81;
default: abort ();
}
}
}
}
