#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char, unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, unsigned char, signed short);
extern unsigned char v3 (signed char, signed char, unsigned short, unsigned char);
extern unsigned char (*v4) (signed char, signed char, unsigned short, unsigned char);
unsigned short v5 (signed short, signed int, signed char);
unsigned short (*v6) (signed short, signed int, signed char) = v5;
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern signed int v9 (unsigned short, unsigned int);
extern signed int (*v10) (unsigned short, unsigned int);
extern signed char v11 (signed int, unsigned short, signed short, unsigned char);
extern signed char (*v12) (signed int, unsigned short, signed short, unsigned char);
signed short v13 (signed int, unsigned int, signed char, unsigned char);
signed short (*v14) (signed int, unsigned int, signed char, unsigned char) = v13;
extern void v15 (signed char, unsigned short);
extern void (*v16) (signed char, unsigned short);
extern unsigned char v17 (unsigned char, signed int);
extern unsigned char (*v18) (unsigned char, signed int);
signed short v19 (unsigned char);
signed short (*v20) (unsigned char) = v19;
signed short v21 (signed short, signed short, unsigned short);
signed short (*v22) (signed short, signed short, unsigned short) = v21;
extern unsigned short v23 (signed char, signed int, signed short, signed short);
extern unsigned short (*v24) (signed char, signed int, signed short, signed short);
signed int v25 (unsigned int);
signed int (*v26) (unsigned int) = v25;
static unsigned int v27 (unsigned int, unsigned int);
static unsigned int (*v28) (unsigned int, unsigned int) = v27;
extern void v29 (unsigned short, unsigned int);
extern void (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 3;
unsigned char v32 = 1;
signed short v31 = 2;

static unsigned int v27 (unsigned int v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
unsigned short v37 = 3;
signed int v36 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v39;
unsigned int v40;
v39 = 3 + v38;
v40 = v35 + v34;
v29 (v39, v40);
}
break;
case 7: 
{
unsigned short v41;
unsigned int v42;
v41 = v38 - v38;
v42 = v34 + v34;
v29 (v41, v42);
}
break;
case 9: 
return v35;
case 11: 
return 2U;
default: abort ();
}
}
}
}

signed int v25 (unsigned int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 0;
signed char v45 = 1;
signed short v44 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (signed short v47, signed short v48, unsigned short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 1;
unsigned int v51 = 1U;
unsigned char v50 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (unsigned char v53)
{
history[history_index++] = (int)v53;
{
for (;;) {
signed int v56 = 1;
unsigned char v55 = 0;
unsigned char v54 = 0;
trace++;
switch (trace)
{
case 4: 
{
unsigned int v57;
unsigned int v58;
unsigned int v59;
v57 = 0U - 6U;
v58 = 4U - 7U;
v59 = v27 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 10: 
{
unsigned int v60;
unsigned int v61;
unsigned int v62;
v60 = 7U + 0U;
v61 = 1U - 2U;
v62 = v27 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

signed short v13 (signed int v63, unsigned int v64, signed char v65, unsigned char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = 0;
signed int v68 = 3;
signed char v67 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v70, signed int v71, signed char v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
signed int v75 = 3;
unsigned char v74 = 5;
signed short v73 = 2;
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
unsigned char v78;
unsigned char v79;
signed short v80;
unsigned int v81;
v78 = v32 - 5;
v79 = v32 + v32;
v80 = v31 - v31;
v81 = v1 (v78, v79, v80);
history[history_index++] = (int)v81;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
