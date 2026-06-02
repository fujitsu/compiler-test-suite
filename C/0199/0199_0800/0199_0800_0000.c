#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned short);
static signed char (*v2) (unsigned short) = v1;
extern signed char v3 (unsigned int, unsigned char, signed short);
extern signed char (*v4) (unsigned int, unsigned char, signed short);
extern unsigned int v5 (unsigned int, signed char, signed int);
extern unsigned int (*v6) (unsigned int, signed char, signed int);
extern signed short v7 (signed int, signed short, unsigned char, unsigned char);
extern signed short (*v8) (signed int, signed short, unsigned char, unsigned char);
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
signed int v11 (signed short, unsigned short, signed short, unsigned char);
signed int (*v12) (signed short, unsigned short, signed short, unsigned char) = v11;
void v13 (signed char, signed int, signed char);
void (*v14) (signed char, signed int, signed char) = v13;
extern unsigned short v15 (unsigned char, signed int);
extern unsigned short (*v16) (unsigned char, signed int);
extern signed short v17 (unsigned char, unsigned short);
extern signed short (*v18) (unsigned char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (signed int, unsigned short);
extern unsigned int (*v22) (signed int, unsigned short);
extern void v23 (signed char, signed char);
extern void (*v24) (signed char, signed char);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (signed char, signed int, signed char);
extern unsigned int (*v28) (signed char, signed int, signed char);
extern signed int v29 (unsigned short, unsigned int);
extern signed int (*v30) (unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned char v32 = 7;
signed short v31 = 2;

void v25 (void)
{
{
for (;;) {
signed char v36 = 2;
unsigned int v35 = 4U;
unsigned short v34 = 6;
trace++;
switch (trace)
{
case 4: 
return;
case 7: 
return;
default: abort ();
}
}
}
}

void v13 (signed char v37, signed int v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = -3;
signed char v41 = -4;
unsigned short v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v43, unsigned short v44, signed short v45, unsigned char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -3;
signed short v48 = -2;
signed char v47 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned short v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -2;
signed short v52 = 1;
unsigned int v51 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v54;
signed char v55;
signed int v56;
unsigned int v57;
v54 = 4U + 2U;
v55 = -3 + -2;
v56 = -3 + v53;
v57 = v5 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 2: 
{
unsigned int v58;
unsigned char v59;
signed short v60;
signed char v61;
v58 = 1U - 2U;
v59 = 3 - 6;
v60 = v52 + 0;
v61 = v3 (v58, v59, v60);
history[history_index++] = (int)v61;
}
break;
case 6: 
{
v25 ();
}
break;
case 8: 
{
unsigned int v62;
signed char v63;
signed int v64;
unsigned int v65;
v62 = 4U - 5U;
v63 = -2 + -2;
v64 = -1 + -1;
v65 = v5 (v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 10: 
{
unsigned char v66;
unsigned short v67;
signed short v68;
v66 = 4 - 7;
v67 = v50 - 6;
v68 = v17 (v66, v67);
history[history_index++] = (int)v68;
}
break;
case 12: 
return -2;
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
unsigned short v71;
signed char v72;
v71 = 5 + 4;
v72 = v1 (v71);
history[history_index++] = (int)v72;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
