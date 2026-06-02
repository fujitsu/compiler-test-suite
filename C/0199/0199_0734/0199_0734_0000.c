#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed int, signed int, unsigned char);
static signed char (*v2) (signed int, signed int, unsigned char) = v1;
extern signed char v3 (signed int, signed char, signed char);
extern signed char (*v4) (signed int, signed char, signed char);
extern void v5 (signed int, signed int);
extern void (*v6) (signed int, signed int);
signed int v7 (unsigned short, signed char);
signed int (*v8) (unsigned short, signed char) = v7;
signed int v9 (unsigned char, unsigned short, signed int, signed int);
signed int (*v10) (unsigned char, unsigned short, signed int, signed int) = v9;
extern signed short v11 (signed int, unsigned char, unsigned int, signed short);
extern signed short (*v12) (signed int, unsigned char, unsigned int, signed short);
signed char v13 (unsigned short, unsigned short, unsigned int);
signed char (*v14) (unsigned short, unsigned short, unsigned int) = v13;
extern signed short v15 (unsigned short, unsigned char);
extern signed short (*v16) (unsigned short, unsigned char);
extern void v17 (unsigned short, unsigned int, signed short, unsigned short);
extern void (*v18) (unsigned short, unsigned int, signed short, unsigned short);
extern signed short v19 (unsigned char, unsigned char, signed short);
extern signed short (*v20) (unsigned char, unsigned char, signed short);
extern signed int v21 (unsigned int, signed char);
extern signed int (*v22) (unsigned int, signed char);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
void v25 (void);
void (*v26) (void) = v25;
signed short v27 (unsigned int, unsigned short);
signed short (*v28) (unsigned int, unsigned short) = v27;
extern signed char v29 (signed char, signed char);
extern signed char (*v30) (signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned short v32 = 3;
signed int v31 = 2;

signed short v27 (unsigned int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
signed short v37 = -4;
signed short v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
signed short v41 = 0;
unsigned char v40 = 1;
signed short v39 = 0;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v13 (unsigned short v42, unsigned short v43, unsigned int v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 0;
unsigned int v46 = 4U;
unsigned int v45 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v48, unsigned short v49, signed int v50, signed int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 1;
unsigned int v53 = 3U;
signed int v52 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v55, signed char v56)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed int v59 = 2;
unsigned char v58 = 7;
unsigned char v57 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed int v60, signed int v61, unsigned char v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -1;
signed short v64 = -3;
unsigned int v63 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed int v66;
unsigned char v67;
unsigned int v68;
signed short v69;
signed short v70;
v66 = v60 - v60;
v67 = 5 + v62;
v68 = v63 + 2U;
v69 = v64 - v64;
v70 = v11 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 14: 
return 0;
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
signed int v73;
signed int v74;
unsigned char v75;
signed char v76;
v73 = 0 - -3;
v74 = v31 - 1;
v75 = 7 + 2;
v76 = v1 (v73, v74, v75);
history[history_index++] = (int)v76;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
