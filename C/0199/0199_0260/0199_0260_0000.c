#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (signed char, unsigned char, signed char);
static unsigned int (*v2) (signed char, unsigned char, signed char) = v1;
extern signed int v3 (unsigned char, signed short);
extern signed int (*v4) (unsigned char, signed short);
extern void v5 (signed char, unsigned int, unsigned char, unsigned char);
extern void (*v6) (signed char, unsigned int, unsigned char, unsigned char);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
unsigned short v9 (unsigned short, unsigned short, unsigned int, signed char);
unsigned short (*v10) (unsigned short, unsigned short, unsigned int, signed char) = v9;
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern unsigned int v13 (unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned char, unsigned char);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
signed short v17 (void);
signed short (*v18) (void) = v17;
unsigned char v19 (unsigned char, unsigned short, signed short);
unsigned char (*v20) (unsigned char, unsigned short, signed short) = v19;
extern unsigned short v21 (signed int, unsigned int);
extern unsigned short (*v22) (signed int, unsigned int);
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned char v25 (unsigned short, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned char, signed char, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
signed short v32 = 1;
signed int v31 = -4;

unsigned char v19 (unsigned char v34, unsigned short v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 2;
unsigned char v38 = 3;
unsigned int v37 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned short v42 = 5;
unsigned int v41 = 6U;
signed char v40 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v43, unsigned short v44, unsigned int v45, signed char v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 3;
signed char v48 = 2;
signed int v47 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (signed char v50, unsigned char v51, signed char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 1;
signed short v54 = 0;
signed char v53 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed int v56;
unsigned int v57;
unsigned short v58;
v56 = -1 - 1;
v57 = 6U - 6U;
v58 = v21 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 2: 
{
unsigned char v59;
signed int v60;
signed int v61;
v59 = 4 - 1;
v60 = -3 - -4;
v61 = v7 (v59, v60);
history[history_index++] = (int)v61;
}
break;
case 4: 
{
signed int v62;
unsigned int v63;
unsigned short v64;
v62 = 3 + -3;
v63 = 3U - 4U;
v64 = v21 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 10: 
{
unsigned char v65;
signed int v66;
signed int v67;
v65 = v51 + v55;
v66 = -3 + 2;
v67 = v7 (v65, v66);
history[history_index++] = (int)v67;
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
signed char v70;
unsigned char v71;
signed char v72;
unsigned int v73;
v70 = 2 + -3;
v71 = 1 + 3;
v72 = -1 + 1;
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
