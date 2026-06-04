#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned char, unsigned int);
unsigned int v3 (signed int, signed short, unsigned short, unsigned char);
unsigned int (*v4) (signed int, signed short, unsigned short, unsigned char) = v3;
unsigned short v5 (unsigned short);
unsigned short (*v6) (unsigned short) = v5;
extern unsigned char v7 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v8) (unsigned short, signed char, unsigned char, signed char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (unsigned short, unsigned short);
extern unsigned short (*v12) (unsigned short, unsigned short);
extern unsigned char v13 (signed short);
extern unsigned char (*v14) (signed short);
signed short v15 (signed short, unsigned short, signed int);
signed short (*v16) (signed short, unsigned short, signed int) = v15;
static unsigned int v17 (void);
static unsigned int (*v18) (void) = v17;
extern unsigned char v19 (signed char, signed int, signed short);
extern unsigned char (*v20) (signed char, signed int, signed short);
unsigned int v21 (signed int, unsigned int, signed char, unsigned char);
unsigned int (*v22) (signed int, unsigned int, signed char, unsigned char) = v21;
extern signed char v23 (signed int, signed char, signed short);
extern signed char (*v24) (signed int, signed char, signed short);
extern void v25 (unsigned char, unsigned char);
extern void (*v26) (unsigned char, unsigned char);
extern unsigned short v27 (unsigned int, signed short);
extern unsigned short (*v28) (unsigned int, signed short);
extern signed char v29 (signed short, signed int, unsigned int, unsigned int);
extern signed char (*v30) (signed short, signed int, unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
signed char v32 = -3;
signed char v31 = 1;

unsigned int v21 (signed int v34, unsigned int v35, signed char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 0;
signed char v39 = -4;
signed char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v17 (void)
{
{
for (;;) {
signed char v43 = 2;
unsigned char v42 = 2;
signed int v41 = -1;
trace++;
switch (trace)
{
case 7: 
return 2U;
default: abort ();
}
}
}
}

signed short v15 (signed short v44, unsigned short v45, signed int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 7;
unsigned char v48 = 3;
unsigned char v47 = 4;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v50;
unsigned short v51;
unsigned short v52;
v50 = v45 - v45;
v51 = v49 + v45;
v52 = v11 (v50, v51);
history[history_index++] = (int)v52;
}
break;
case 6: 
{
unsigned int v53;
v53 = v17 ();
history[history_index++] = (int)v53;
}
break;
case 8: 
{
unsigned short v54;
unsigned short v55;
unsigned short v56;
v54 = v49 + v45;
v55 = v49 + v45;
v56 = v11 (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 0;
signed int v59 = -3;
unsigned short v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed int v61, signed short v62, unsigned short v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 7;
signed short v66 = -4;
unsigned char v65 = 1;
trace++;
switch (trace)
{
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
unsigned char v70;
unsigned char v71;
unsigned int v72;
unsigned short v73;
v70 = 1 - 5;
v71 = 7 + 0;
v72 = 0U + 2U;
v73 = v1 (v70, v71, v72);
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
