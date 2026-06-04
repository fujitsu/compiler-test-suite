#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v2) (unsigned char, unsigned char, unsigned char, signed short);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned char, unsigned short, signed short);
extern unsigned char (*v6) (unsigned char, unsigned short, signed short);
signed short v7 (signed char, unsigned char);
signed short (*v8) (signed char, unsigned char) = v7;
signed char v9 (unsigned short, signed int, signed short);
signed char (*v10) (unsigned short, signed int, signed short) = v9;
extern unsigned short v11 (unsigned int, unsigned short, signed short);
extern unsigned short (*v12) (unsigned int, unsigned short, signed short);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
signed short v15 (signed int);
signed short (*v16) (signed int) = v15;
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern signed short v19 (unsigned int, signed char);
extern signed short (*v20) (unsigned int, signed char);
extern unsigned int v21 (unsigned int, signed short);
extern unsigned int (*v22) (unsigned int, signed short);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned int);
extern void (*v26) (unsigned int);
extern signed short v27 (signed int, signed char);
extern signed short (*v28) (signed int, signed char);
static signed char v29 (signed char);
static signed char (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 5U;
signed short v32 = -4;
signed short v31 = -1;

static signed char v29 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 6;
unsigned short v36 = 5;
unsigned short v35 = 4;
trace++;
switch (trace)
{
case 2: 
return v34;
case 4: 
return v34;
case 6: 
return v34;
default: abort ();
}
}
}
}

signed short v15 (signed int v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 5;
signed char v40 = 0;
unsigned short v39 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned short v42, signed int v43, signed short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 3;
signed int v46 = -1;
unsigned char v45 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed char v48;
signed char v49;
v48 = -1 - 3;
v49 = v29 (v48);
history[history_index++] = (int)v49;
}
break;
case 3: 
{
signed char v50;
signed char v51;
v50 = -1 + v47;
v51 = v29 (v50);
history[history_index++] = (int)v51;
}
break;
case 5: 
{
signed char v52;
signed char v53;
v52 = 3 - -3;
v53 = v29 (v52);
history[history_index++] = (int)v53;
}
break;
case 7: 
{
unsigned int v54;
unsigned short v55;
signed short v56;
unsigned short v57;
v54 = 5U - 2U;
v55 = 1 + v42;
v56 = v44 - 2;
v57 = v11 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 9: 
{
signed short v58;
signed short v59;
v58 = -1 - -4;
v59 = v17 (v58);
history[history_index++] = (int)v59;
}
break;
case 13: 
return -4;
default: abort ();
}
}
}
}

signed short v7 (signed char v60, unsigned char v61)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 1;
signed int v63 = -3;
signed int v62 = -3;
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
unsigned char v67;
unsigned char v68;
unsigned char v69;
signed short v70;
signed char v71;
v67 = 4 - 4;
v68 = 6 - 7;
v69 = 0 + 6;
v70 = v32 - v31;
v71 = v1 (v67, v68, v69, v70);
history[history_index++] = (int)v71;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
