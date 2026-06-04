#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
signed short v3 (signed short);
signed short (*v4) (signed short) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (signed char, unsigned char, unsigned int);
extern unsigned short (*v12) (signed char, unsigned char, unsigned int);
extern unsigned int v13 (signed short, signed int, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed int, signed char, unsigned int);
extern unsigned int v15 (unsigned char, unsigned char);
extern unsigned int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short, signed char);
extern signed char (*v18) (signed short, signed char);
extern signed short v19 (unsigned char, unsigned short);
extern signed short (*v20) (unsigned char, unsigned short);
unsigned char v21 (signed int, unsigned short, unsigned char, signed char);
unsigned char (*v22) (signed int, unsigned short, unsigned char, signed char) = v21;
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
void v25 (unsigned short, signed short, unsigned int);
void (*v26) (unsigned short, signed short, unsigned int) = v25;
signed short v27 (unsigned short, signed char, signed char, unsigned char);
signed short (*v28) (unsigned short, signed char, signed char, unsigned char) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed short v32 = -2;
unsigned int v31 = 6U;

signed short v27 (unsigned short v34, signed char v35, signed char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 6;
signed int v39 = 2;
signed short v38 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (unsigned short v41, signed short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 0;
unsigned short v45 = 2;
unsigned short v44 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed int v47, unsigned short v48, unsigned char v49, signed char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed char v53 = -4;
unsigned char v52 = 4;
signed short v51 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned char v57 = 5;
signed int v56 = 2;
signed int v55 = 3;
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
signed short v60 = 1;
signed int v59 = 3;
signed char v58 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v61;
signed int v62;
signed short v63;
v61 = 0 - 6;
v62 = v59 - v59;
v63 = v23 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 8: 
{
signed char v64;
unsigned char v65;
unsigned int v66;
unsigned short v67;
v64 = v58 + v58;
v65 = 3 - 1;
v66 = 2U + 3U;
v67 = v11 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 10: 
{
unsigned char v68;
unsigned short v69;
signed short v70;
v68 = 6 + 4;
v69 = 2 - 5;
v70 = v19 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 12: 
return 6U;
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
unsigned int v73;
v73 = v1 ();
history[history_index++] = (int)v73;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
