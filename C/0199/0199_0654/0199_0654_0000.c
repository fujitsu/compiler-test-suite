#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern void v3 (unsigned int, signed int);
extern void (*v4) (unsigned int, signed int);
extern unsigned short v5 (signed short, signed short);
extern unsigned short (*v6) (signed short, signed short);
extern signed short v7 (unsigned short, unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned short, unsigned int, signed char, signed int);
extern signed int v9 (signed int, signed char, signed char, signed char);
extern signed int (*v10) (signed int, signed char, signed char, signed char);
void v11 (unsigned short, unsigned int);
void (*v12) (unsigned short, unsigned int) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (unsigned int, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v16) (unsigned int, unsigned short, unsigned short, unsigned int);
signed char v17 (void);
signed char (*v18) (void) = v17;
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
static unsigned int v21 (unsigned int, signed char, signed char, unsigned char);
static unsigned int (*v22) (unsigned int, signed char, signed char, unsigned char) = v21;
signed char v23 (signed int, signed int, signed char);
signed char (*v24) (signed int, signed int, signed char) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned char v29 (signed char, unsigned char, signed short);
extern unsigned char (*v30) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = 0;
unsigned int v31 = 7U;

signed char v23 (signed int v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
signed int v38 = 2;
signed short v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v21 (unsigned int v40, signed char v41, signed char v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
unsigned char v45 = 3;
unsigned int v44 = 5U;
trace++;
switch (trace)
{
case 2: 
{
signed char v47;
v47 = v27 ();
history[history_index++] = (int)v47;
}
break;
case 4: 
return v40;
case 6: 
return v40;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
unsigned int v50 = 7U;
signed short v49 = -2;
unsigned char v48 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed char v53 = -1;
unsigned int v52 = 3U;
signed short v51 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v54;
signed char v55;
signed char v56;
unsigned char v57;
unsigned int v58;
v54 = 7U + 3U;
v55 = v53 + 1;
v56 = 0 + 0;
v57 = 1 - 4;
v58 = v21 (v54, v55, v56, v57);
history[history_index++] = (int)v58;
}
break;
case 5: 
{
unsigned int v59;
signed char v60;
signed char v61;
unsigned char v62;
unsigned int v63;
v59 = v52 + v52;
v60 = -2 - 1;
v61 = v53 + 0;
v62 = 3 - 2;
v63 = v21 (v59, v60, v61, v62);
history[history_index++] = (int)v63;
}
break;
case 7: 
return -2;
case 9: 
return -3;
case 11: 
return v53;
default: abort ();
}
}
}
}

void v11 (unsigned short v64, unsigned int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed int v68 = -3;
unsigned int v67 = 4U;
signed char v66 = 0;
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
unsigned int v71;
signed int v72;
unsigned short v73;
v71 = v31 - 3U;
v72 = -2 + -4;
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
