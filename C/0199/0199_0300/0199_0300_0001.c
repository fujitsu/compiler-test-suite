#include <stdlib.h>
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern signed short v7 (void);
extern signed short (*v8) (void);
signed int v9 (signed char, unsigned short);
signed int (*v10) (signed char, unsigned short) = v9;
signed int v11 (void);
signed int (*v12) (void) = v11;
void v13 (signed int, unsigned int, unsigned char, unsigned int);
void (*v14) (signed int, unsigned int, unsigned char, unsigned int) = v13;
unsigned short v15 (unsigned char);
unsigned short (*v16) (unsigned char) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
unsigned char v19 (void);
unsigned char (*v20) (void) = v19;
unsigned char v21 (signed char, unsigned char, unsigned char);
unsigned char (*v22) (signed char, unsigned char, unsigned char) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
extern unsigned short v27 (unsigned int);
extern unsigned short (*v28) (unsigned int);
extern unsigned int v29 (signed short, signed char, unsigned char, signed short);
extern unsigned int (*v30) (signed short, signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v66 = -2;
unsigned char v65 = 1;
unsigned char v64 = 2;

unsigned char v21 (signed char v67, unsigned char v68, unsigned char v69)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 3U;
unsigned char v71 = 1;
unsigned char v70 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (void)
{
{
for (;;) {
signed char v75 = -3;
signed int v74 = -2;
signed int v73 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed char v78 = 0;
signed short v77 = -4;
unsigned int v76 = 1U;
trace++;
switch (trace)
{
case 5: 
return 7;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
signed int v82 = -4;
unsigned short v81 = 6;
unsigned char v80 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v83, unsigned int v84, unsigned char v85, unsigned int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
unsigned short v89 = 4;
signed int v88 = 0;
unsigned char v87 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed int v92 = 2;
unsigned short v91 = 3;
signed char v90 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed char v93, unsigned short v94)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
{
for (;;) {
signed short v97 = -2;
unsigned short v96 = 0;
unsigned short v95 = 6;
trace++;
switch (trace)
{
case 2: 
return -4;
case 9: 
return -1;
default: abort ();
}
}
}
}
