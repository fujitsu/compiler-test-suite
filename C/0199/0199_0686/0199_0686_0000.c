#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, unsigned char);
extern signed char (*v2) (signed char, unsigned short, unsigned char);
signed char v3 (unsigned short, signed short);
signed char (*v4) (unsigned short, signed short) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (signed int, signed char, unsigned int);
extern unsigned int (*v8) (signed int, signed char, unsigned int);
signed short v9 (signed char, unsigned short);
signed short (*v10) (signed char, unsigned short) = v9;
extern signed int v11 (unsigned short, signed short, unsigned char, signed char);
extern signed int (*v12) (unsigned short, signed short, unsigned char, signed char);
unsigned char v13 (signed short, unsigned short, unsigned short, signed int);
unsigned char (*v14) (signed short, unsigned short, unsigned short, signed int) = v13;
static signed char v15 (signed char, unsigned short);
static signed char (*v16) (signed char, unsigned short) = v15;
extern signed int v17 (signed int, signed char, unsigned short);
extern signed int (*v18) (signed int, signed char, unsigned short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (signed int, unsigned short, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short, unsigned short);
extern signed char v25 (unsigned short);
extern signed char (*v26) (unsigned short);
unsigned char v27 (signed int, unsigned int, signed int, signed short);
unsigned char (*v28) (signed int, unsigned int, signed int, signed short) = v27;
extern signed char v29 (signed int, unsigned char, unsigned short);
extern signed char (*v30) (signed int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 5;
signed char v32 = 1;
unsigned short v31 = 2;

unsigned char v27 (signed int v34, unsigned int v35, signed int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 3;
signed char v39 = -2;
unsigned short v38 = 1;
trace++;
switch (trace)
{
case 2: 
return 5;
case 7: 
return 4;
default: abort ();
}
}
}
}

static signed char v15 (signed char v41, unsigned short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 2;
unsigned short v44 = 4;
unsigned char v43 = 3;
trace++;
switch (trace)
{
case 10: 
return v41;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v46, unsigned short v47, unsigned short v48, signed int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed short v52 = 1;
signed char v51 = 0;
unsigned short v50 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v53, unsigned short v54)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 1;
unsigned int v56 = 0U;
unsigned int v55 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v58;
signed char v59;
v58 = 5 + v54;
v59 = v25 (v58);
history[history_index++] = (int)v59;
}
break;
case 9: 
{
signed char v60;
unsigned short v61;
signed char v62;
v60 = 2 + 3;
v61 = 7 - 5;
v62 = v15 (v60, v61);
history[history_index++] = (int)v62;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed char v3 (unsigned short v63, signed short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 2;
unsigned short v66 = 7;
signed char v65 = 3;
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
signed char v70;
unsigned short v71;
unsigned char v72;
signed char v73;
v70 = v32 + v32;
v71 = 4 + v33;
v72 = 5 - 2;
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
