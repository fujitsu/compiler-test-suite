#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed char, unsigned char, unsigned int);
static signed char (*v2) (signed char, unsigned char, unsigned int) = v1;
extern signed int v3 (unsigned int, unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, signed int);
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
extern signed char v7 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short, unsigned short);
extern signed char v9 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v10) (unsigned int, signed char, signed char, unsigned char);
extern void v11 (signed short, unsigned short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned short, unsigned char, signed int);
extern signed int v13 (unsigned short, signed short);
extern signed int (*v14) (unsigned short, signed short);
unsigned char v15 (unsigned short, unsigned short, signed short, unsigned char);
unsigned char (*v16) (unsigned short, unsigned short, signed short, unsigned char) = v15;
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
signed int v19 (signed int, signed char, unsigned short, signed char);
signed int (*v20) (signed int, signed char, unsigned short, signed char) = v19;
extern unsigned int v21 (signed short);
extern unsigned int (*v22) (signed short);
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (signed short, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned char, signed short, unsigned short);
extern signed short v27 (signed int, signed char, signed int, signed char);
extern signed short (*v28) (signed int, signed char, signed int, signed char);
extern signed short v29 (signed int, unsigned short, unsigned char);
extern signed short (*v30) (signed int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned int v32 = 7U;
unsigned int v31 = 0U;

signed int v19 (signed int v34, signed char v35, unsigned short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 2;
signed short v39 = -3;
unsigned short v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (unsigned short v41, unsigned short v42, signed short v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 1;
unsigned int v46 = 1U;
signed short v45 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed char v48, unsigned char v49, unsigned int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 3;
unsigned char v52 = 0;
signed short v51 = -3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v54;
signed char v55;
signed char v56;
unsigned char v57;
signed char v58;
v54 = 1U - v50;
v55 = v48 - v48;
v56 = v48 - 1;
v57 = v52 + v52;
v58 = v9 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 6: 
{
signed short v59;
signed short v60;
unsigned short v61;
unsigned short v62;
signed char v63;
v59 = v53 - v51;
v60 = v51 + -1;
v61 = 6 - 5;
v62 = 7 - 7;
v63 = v7 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 10: 
{
unsigned short v64;
signed char v65;
v64 = 5 - 5;
v65 = v17 (v64);
history[history_index++] = (int)v65;
}
break;
case 12: 
return v48;
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
signed char v68;
unsigned char v69;
unsigned int v70;
signed char v71;
v68 = 3 + -1;
v69 = 5 + 5;
v70 = v32 + v31;
v71 = v1 (v68, v69, v70);
history[history_index++] = (int)v71;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
