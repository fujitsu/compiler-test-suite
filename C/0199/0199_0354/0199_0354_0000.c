#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
signed int v3 (unsigned int, signed int);
signed int (*v4) (unsigned int, signed int) = v3;
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned short v7 (unsigned char);
unsigned short (*v8) (unsigned char) = v7;
void v9 (signed char);
void (*v10) (signed char) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (signed int, unsigned int);
extern signed char (*v14) (signed int, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (void);
extern signed int (*v18) (void);
extern signed short v19 (signed char, unsigned char);
extern signed short (*v20) (signed char, unsigned char);
extern unsigned char v21 (unsigned char, signed int, signed int);
extern unsigned char (*v22) (unsigned char, signed int, signed int);
extern void v23 (void);
extern void (*v24) (void);
void v25 (signed char, signed char, unsigned short);
void (*v26) (signed char, signed char, unsigned short) = v25;
extern unsigned char v27 (signed char, unsigned int);
extern unsigned char (*v28) (signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -1;
unsigned int v32 = 5U;
signed char v31 = 3;

void v25 (signed char v34, signed char v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
signed short v38 = 3;
unsigned int v37 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 0;
unsigned short v42 = 6;
unsigned char v41 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
signed int v46 = 3;
unsigned int v45 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned int v48, signed int v49)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed int v52 = 2;
unsigned char v51 = 6;
signed short v50 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (void)
{
{
for (;;) {
signed int v55 = 0;
unsigned int v54 = 7U;
unsigned short v53 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v56;
unsigned int v57;
unsigned char v58;
v56 = -1 - -2;
v57 = v54 + v54;
v58 = v27 (v56, v57);
history[history_index++] = (int)v58;
}
break;
case 2: 
{
signed int v59;
v59 = v17 ();
history[history_index++] = (int)v59;
}
break;
case 4: 
{
signed int v60;
v60 = v11 ();
history[history_index++] = (int)v60;
}
break;
case 6: 
{
signed char v61;
unsigned char v62;
signed short v63;
v61 = 2 - 3;
v62 = 4 + 6;
v63 = v19 (v61, v62);
history[history_index++] = (int)v63;
}
break;
case 12: 
return 0U;
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
unsigned int v66;
v66 = v1 ();
history[history_index++] = (int)v66;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
