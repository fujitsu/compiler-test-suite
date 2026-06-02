#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed short v5 (unsigned char, unsigned int, unsigned short);
extern signed short (*v6) (unsigned char, unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (signed int, unsigned short, unsigned char, signed char);
void (*v10) (signed int, unsigned short, unsigned char, signed char) = v9;
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
extern signed int v13 (unsigned char, unsigned int);
extern signed int (*v14) (unsigned char, unsigned int);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern unsigned char v17 (unsigned short, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int);
signed int v19 (unsigned char, signed int, unsigned short, signed int);
signed int (*v20) (unsigned char, signed int, unsigned short, signed int) = v19;
static unsigned int v21 (unsigned short, unsigned int, unsigned int);
static unsigned int (*v22) (unsigned short, unsigned int, unsigned int) = v21;
signed short v23 (signed char, unsigned short);
signed short (*v24) (signed char, unsigned short) = v23;
extern unsigned int v25 (signed char, signed int, signed char, signed short);
extern unsigned int (*v26) (signed char, signed int, signed char, signed short);
extern signed char v27 (void);
extern signed char (*v28) (void);
unsigned char v29 (void);
unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned int v32 = 3U;
unsigned int v31 = 6U;

unsigned char v29 (void)
{
{
for (;;) {
signed short v36 = 3;
unsigned short v35 = 1;
signed int v34 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (signed char v37, unsigned short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 4;
signed short v40 = 3;
signed int v39 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v21 (unsigned short v42, unsigned int v43, unsigned int v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 2;
unsigned short v46 = 4;
unsigned int v45 = 1U;
trace++;
switch (trace)
{
case 7: 
return v45;
default: abort ();
}
}
}
}

signed int v19 (unsigned char v48, signed int v49, unsigned short v50, signed int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 4;
signed int v53 = 3;
signed int v52 = 3;
trace++;
switch (trace)
{
case 1: 
return v51;
case 4: 
{
signed char v55;
v55 = v27 ();
history[history_index++] = (int)v55;
}
break;
case 6: 
{
unsigned short v56;
unsigned int v57;
unsigned int v58;
unsigned int v59;
v56 = v50 + 1;
v57 = 5U - 6U;
v58 = 7U + 7U;
v59 = v21 (v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 8: 
return v49;
default: abort ();
}
}
}
}

void v9 (signed int v60, unsigned short v61, unsigned char v62, signed char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 1;
unsigned short v65 = 0;
unsigned char v64 = 2;
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
unsigned int v69;
signed short v70;
unsigned char v71;
v69 = 1U + v31;
v70 = 1 - 3;
v71 = v1 (v69, v70);
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
