#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (unsigned int, signed char, signed short, unsigned char);
extern signed short (*v6) (unsigned int, signed char, signed short, unsigned char);
signed short v7 (unsigned short, signed char, signed char);
signed short (*v8) (unsigned short, signed char, signed char) = v7;
signed short v9 (unsigned int, unsigned char, unsigned short);
signed short (*v10) (unsigned int, unsigned char, unsigned short) = v9;
extern unsigned int v11 (signed int, signed char, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed char, signed int, unsigned short);
unsigned int v13 (unsigned int);
unsigned int (*v14) (unsigned int) = v13;
extern signed short v15 (unsigned int, signed int, signed char);
extern signed short (*v16) (unsigned int, signed int, signed char);
extern signed int v17 (signed short);
extern signed int (*v18) (signed short);
extern void v19 (signed short, signed short);
extern void (*v20) (signed short, signed short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
signed int v23 (void);
signed int (*v24) (void) = v23;
unsigned short v25 (signed int, signed char, unsigned int);
unsigned short (*v26) (signed int, signed char, unsigned int) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed short v29 (unsigned char, signed short, unsigned char);
extern signed short (*v30) (unsigned char, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v57 = 2;
unsigned int v56 = 2U;
unsigned short v55 = 1;

signed int v27 (void)
{
{
for (;;) {
signed int v60 = 1;
signed int v59 = 1;
unsigned short v58 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (signed int v61, signed char v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 2;
signed short v65 = 0;
signed short v64 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed int v69 = 3;
unsigned int v68 = 0U;
unsigned char v67 = 6;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return v69;
case 10: 
return 1;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v72 = 0;
unsigned char v71 = 4;
signed char v70 = 3;
trace++;
switch (trace)
{
case 3: 
return v72;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
signed char v76 = -1;
unsigned int v75 = 0U;
signed char v74 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned int v77, unsigned char v78, unsigned short v79)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = 0;
signed char v81 = -3;
signed int v80 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v83, signed char v84, signed char v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = -4;
signed short v87 = 1;
unsigned short v86 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
