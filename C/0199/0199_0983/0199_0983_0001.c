#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned short, unsigned int);
extern unsigned int (*v2) (signed short, unsigned short, unsigned int);
unsigned char v3 (signed char, unsigned int);
unsigned char (*v4) (signed char, unsigned int) = v3;
extern void v5 (signed int, unsigned int, signed short, signed int);
extern void (*v6) (signed int, unsigned int, signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned char);
extern void (*v12) (signed short, signed short, unsigned char);
signed char v13 (unsigned char);
signed char (*v14) (unsigned char) = v13;
unsigned int v15 (unsigned short, signed short, unsigned char, signed char);
unsigned int (*v16) (unsigned short, signed short, unsigned char, signed char) = v15;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned int v21 (unsigned int, signed int, unsigned int);
unsigned int (*v22) (unsigned int, signed int, unsigned int) = v21;
void v23 (signed short, unsigned int, signed int, unsigned int);
void (*v24) (signed short, unsigned int, signed int, unsigned int) = v23;
void v25 (signed int, unsigned char);
void (*v26) (signed int, unsigned char) = v25;
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = 3;
signed short v47 = -4;
unsigned short v46 = 4;

void v25 (signed int v49, unsigned char v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 2;
signed short v52 = 1;
signed short v51 = -4;
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

void v23 (signed short v54, unsigned int v55, signed int v56, unsigned int v57)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = 3;
signed int v59 = 0;
unsigned char v58 = 0;
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

unsigned int v21 (unsigned int v61, signed int v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -2;
unsigned int v65 = 3U;
unsigned char v64 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v67, signed short v68, unsigned char v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 3;
signed short v72 = 1;
signed int v71 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned char v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 0;
signed short v76 = 2;
signed int v75 = 3;
trace++;
switch (trace)
{
case 2: 
return -4;
default: abort ();
}
}
}
}

unsigned char v3 (signed char v78, unsigned int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
signed short v82 = -2;
signed short v81 = -2;
unsigned int v80 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
