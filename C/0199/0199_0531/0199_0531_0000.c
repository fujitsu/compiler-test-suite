#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, unsigned char);
extern signed short (*v2) (signed int, unsigned char);
extern signed short v3 (unsigned char, unsigned short);
extern signed short (*v4) (unsigned char, unsigned short);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed short v7 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v8) (signed int, unsigned short, signed char, unsigned short);
extern unsigned short v9 (signed int, unsigned int);
extern unsigned short (*v10) (signed int, unsigned int);
extern unsigned short v11 (unsigned short, unsigned char);
extern unsigned short (*v12) (unsigned short, unsigned char);
unsigned char v13 (signed int, unsigned int);
unsigned char (*v14) (signed int, unsigned int) = v13;
unsigned short v15 (signed short, unsigned short);
unsigned short (*v16) (signed short, unsigned short) = v15;
extern signed char v17 (signed char, unsigned int, unsigned char, signed int);
extern signed char (*v18) (signed char, unsigned int, unsigned char, signed int);
extern unsigned int v19 (unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned char);
unsigned int v21 (unsigned short, signed char);
unsigned int (*v22) (unsigned short, signed char) = v21;
extern unsigned short v23 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned short, unsigned char, unsigned int);
unsigned short v25 (unsigned short, unsigned short, signed short, signed char);
unsigned short (*v26) (unsigned short, unsigned short, signed short, signed char) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
static unsigned int v29 (signed short, unsigned short, signed char);
static unsigned int (*v30) (signed short, unsigned short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 1;
signed int v31 = -2;

static unsigned int v29 (signed short v34, unsigned short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
unsigned int v38 = 3U;
signed int v37 = -1;
trace++;
switch (trace)
{
case 2: 
return v38;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v40, unsigned short v41, signed short v42, signed char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -2;
unsigned int v45 = 4U;
unsigned int v44 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned short v47, signed char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = -4;
signed short v50 = 0;
unsigned short v49 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed short v52;
unsigned short v53;
signed char v54;
unsigned int v55;
v52 = v50 + -3;
v53 = 0 + v49;
v54 = v48 - v48;
v55 = v29 (v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
return 2U;
default: abort ();
}
}
}
}

unsigned short v15 (signed short v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 0;
unsigned char v59 = 1;
signed char v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (signed int v61, unsigned int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed char v65 = 0;
signed char v64 = -4;
signed int v63 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v66;
v66 = v27 ();
history[history_index++] = (int)v66;
}
break;
case 7: 
{
unsigned char v67;
v67 = v27 ();
history[history_index++] = (int)v67;
}
break;
case 9: 
{
unsigned char v68;
v68 = v27 ();
history[history_index++] = (int)v68;
}
break;
case 11: 
return 6;
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
signed int v71;
unsigned char v72;
signed short v73;
v71 = -4 - -3;
v72 = 5 + 0;
v73 = v1 (v71, v72);
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
