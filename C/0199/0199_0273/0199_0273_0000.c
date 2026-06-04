#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed int v5 (unsigned short, unsigned int);
extern signed int (*v6) (unsigned short, unsigned int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
unsigned int v11 (unsigned char, unsigned short, signed int);
unsigned int (*v12) (unsigned char, unsigned short, signed int) = v11;
extern signed short v13 (signed short, signed char, unsigned int, signed char);
extern signed short (*v14) (signed short, signed char, unsigned int, signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
signed int v21 (signed int, signed short);
signed int (*v22) (signed int, signed short) = v21;
signed short v23 (signed char, unsigned short, signed short, unsigned short);
signed short (*v24) (signed char, unsigned short, signed short, unsigned short) = v23;
extern unsigned char v25 (signed int);
extern unsigned char (*v26) (signed int);
signed int v27 (unsigned short);
signed int (*v28) (unsigned short) = v27;
extern unsigned int v29 (unsigned int, signed short, signed int);
extern unsigned int (*v30) (unsigned int, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
signed int v32 = -3;
signed int v31 = -4;

signed int v27 (unsigned short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 5U;
unsigned int v36 = 3U;
signed int v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v38, unsigned short v39, signed short v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 1;
unsigned char v43 = 2;
signed int v42 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed int v45, signed short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -3;
signed char v48 = -4;
unsigned int v47 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
signed short v52 = 3;
signed char v51 = -4;
unsigned char v50 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v53, unsigned short v54, signed int v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -4;
signed short v57 = -2;
signed char v56 = -3;
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
signed char v61 = 1;
unsigned short v60 = 0;
signed short v59 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (void)
{
{
for (;;) {
unsigned char v64 = 6;
signed short v63 = -3;
signed char v62 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed short v65;
signed char v66;
unsigned int v67;
signed char v68;
signed short v69;
v65 = 1 + v63;
v66 = 0 - v62;
v67 = 5U + 3U;
v68 = v62 + 3;
v69 = v13 (v65, v66, v67, v68);
history[history_index++] = (int)v69;
}
break;
case 2: 
{
signed int v70;
unsigned char v71;
v70 = -4 - -1;
v71 = v25 (v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v74;
v74 = v1 ();
history[history_index++] = (int)v74;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
